import {
  Controller,
  Post,
  UploadedFile,
  UseGuards,
  UseInterceptors,
} from '@nestjs/common';

import { FileInterceptor } from '@nestjs/platform-express';

import { JwtAuthGuard } from '../auth/jwt-auth.guard';

import { diskStorage } from 'multer';

import * as path from 'path';

@UseGuards(JwtAuthGuard)
@Controller('instruction')
export class InstructionUploadController {

  @Post('upload')
  @UseInterceptors(
    FileInterceptor('file', {
      storage: diskStorage({

        destination:
          './src/uploads/instruction',

        filename: (
          req,
          file,
          cb,
        ) => {

          const ext =
            path.extname(
              file.originalname
            );

          const fileName =
            Date.now() + ext;

          cb(
            null,
            fileName
          );

        },
      }),
    }),
  )

  upload(
    @UploadedFile()
    file: any,
  ) {

    return {

      fileName:
        file.filename,

      path:
        `/uploads/instruction/${file.filename}`,

    };

  }
}