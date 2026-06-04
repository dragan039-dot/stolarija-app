import { Injectable } from '@nestjs/common';
import * as nodemailer from 'nodemailer';

@Injectable()
export class MailService {
  private transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: Number(process.env.SMTP_PORT) || 465,
    secure: Number(process.env.SMTP_PORT) === 465,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS,
    },
  });

  async sendSiteRequestEmail(data: any) {
    const to = process.env.SITE_REQUEST_EMAIL;

    if (!to) return;

    await this.transporter.sendMail({
      from: `"PVC Kalkulator" <${process.env.SMTP_USER}>`,
      to,
      subject: 'Novi zahtev sa sajta - PVC Kalkulator',
      html: `
        <h2>Novi zahtev sa sajta</h2>

        <p><b>Firma:</b> ${data.firma || ''}</p>
        <p><b>PIB:</b> ${data.pib || ''}</p>
        <p><b>Kontakt osoba:</b> ${data.kontaktOsoba || ''}</p>
        <p><b>Telefon:</b> ${data.telefon || ''}</p>
        <p><b>Email:</b> ${data.email || ''}</p>
        <p><b>Broj korisnika:</b> ${data.brojKorisnika || ''}</p>
        <p><b>Poruka:</b></p>
        <p>${data.poruka || ''}</p>
      `,
    });
  }
}