import { Injectable, OnModuleInit } from '@nestjs/common';
import * as fs from 'fs';
import * as path from 'path';
import * as cron from 'node-cron';
import { AuditService } from '../audit/audit.service';
import { exec } from 'child_process';
import { promisify } from 'util';

const execAsync = promisify(exec);

@Injectable()
export class BackupService implements OnModuleInit {
  constructor(private audit: AuditService) {}

  onModuleInit() {
    cron.schedule('0 3 * * *', () => {
      this.createBackup();
    });

    console.log('✅ Backup cron pokrenut');
  }

  async createBackup() {
    try {
      const backupDir = path.join(process.cwd(), 'backups');

      if (!fs.existsSync(backupDir)) {
        fs.mkdirSync(backupDir);
      }

      const now = new Date();

      const date =
        now.getFullYear() +
        '-' +
        String(now.getMonth() + 1).padStart(2, '0') +
        '-' +
        String(now.getDate()).padStart(2, '0') +
        '_' +
        String(now.getHours()).padStart(2, '0') +
        '-' +
        String(now.getMinutes()).padStart(2, '0');

      const fileName = `backup-${date}.sql`;
      const backupPath = path.join(backupDir, fileName);

      const pgDumpPath = '/usr/lib/postgresql/18/bin/pg_dump';

      const command = `${pgDumpPath} -U stolarija_user -h localhost -p 5432 -d stolarija_db --clean --if-exists -f "${backupPath}"`;

      await execAsync(command, {
        env: {
          ...process.env,
          PGPASSWORD: 'D123654789r',
        },
      });

      await this.audit.log('ADMIN', 'BACKUP_CREATE', fileName);

      return {
        success: true,
        fileName,
      };
    } catch (err) {
      console.error('POSTGRES BACKUP ERROR:', err);

      return {
        success: false,
        message: 'Greška pri kreiranju PostgreSQL backup-a',
      };
    }
  }

  listBackups() {
    const backupDir = path.join(process.cwd(), 'backups');

    if (!fs.existsSync(backupDir)) {
      return [];
    }

    return fs
      .readdirSync(backupDir)
      .filter((file) => file.endsWith('.sql'))
      .map((file) => {
        const fullPath = path.join(backupDir, file);
        const stat = fs.statSync(fullPath);

        return {
          fileName: file,
          size: stat.size,
          createdAt: stat.birthtime,
        };
      })
      .sort(
        (a, b) =>
          new Date(b.createdAt).getTime() - new Date(a.createdAt).getTime(),
      );
  }

  deleteBackup(fileName: string) {
    const backupDir = path.join(process.cwd(), 'backups');
    const filePath = path.join(backupDir, fileName);

    if (!fs.existsSync(filePath)) {
      return { success: false, message: 'Backup fajl ne postoji' };
    }

    fs.unlinkSync(filePath);

    return { success: true };
  }

  async restoreBackup(fileName: string) {
    try {
      const backupDir = path.join(process.cwd(), 'backups');
      const backupPath = path.join(backupDir, fileName);

      if (!fs.existsSync(backupPath)) {
        return {
          success: false,
          message: 'Backup fajl ne postoji',
        };
      }

const pgDumpPath = '/usr/lib/postgresql/18/bin/pg_dump';
const psqlPath = '/usr/lib/postgresql/18/bin/psql';
      const now = Date.now();
      const safetyBackup = `before-restore-${now}.sql`;
      const safetyPath = path.join(backupDir, safetyBackup);

      await execAsync(
        `${pgDumpPath} -U stolarija_user -h localhost -p 5432 -d stolarija_db --clean --if-exists -f "${safetyPath}"`,
        {
          env: {
            ...process.env,
            PGPASSWORD: 'D123654789r',
          },
        },
      );

      await execAsync(
        `${psqlPath} -U stolarija_user -h localhost -p 5432 -d stolarija_db -c "DROP SCHEMA public CASCADE; CREATE SCHEMA public;"`,
        {
          env: {
            ...process.env,
            PGPASSWORD: 'D123654789r',
          },
        },
      );

      await execAsync(
        `${psqlPath} -U stolarija_user -h localhost -p 5432 -d stolarija_db -f "${backupPath}"`,
        {
          env: {
            ...process.env,
            PGPASSWORD: 'D123654789r',
          },
        },
      );

      await this.audit.log(
        'ADMIN',
        'BACKUP_RESTORE',
        `Restore iz: ${fileName}, sigurnosni backup: ${safetyBackup}`,
      );

      return {
        success: true,
        restoredFrom: fileName,
        safetyBackup,
      };
    } catch (err) {
      console.error('POSTGRES RESTORE ERROR:', err);

      return {
        success: false,
        message: 'Greška pri restore backup-a',
      };
    }
  }
}













