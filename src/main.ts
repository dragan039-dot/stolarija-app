import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { ThrottlerGuard } from '@nestjs/throttler';
import { APP_GUARD } from '@nestjs/core';
import { NestExpressApplication }
from '@nestjs/platform-express';
import * as express from 'express';

import { join }
from 'path';

async function bootstrap() {
  const app =
await NestFactory.create<NestExpressApplication>(
  AppModule
);

app.use(express.json({ limit: '55mb' }));
app.use(express.urlencoded({ limit: '55mb', extended: true }));

  // DOZVOLJAVAMO FRONTEND SA 3000 PORTA
  app.enableCors({
  origin: [
    "http://localhost:3000",
    "https://stolarija-frontend.vercel.app",
  ],
  methods: "GET,HEAD,PUT,PATCH,POST,DELETE,OPTIONS",
  allowedHeaders: "Content-Type, Authorization",
  credentials: true,
});


app.useStaticAssets(
  join(process.cwd(), "src", "uploads"),
  {
    prefix: "/uploads/",
  },
);


  await app.listen(3001);
}
bootstrap();
