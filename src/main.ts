import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { ThrottlerGuard } from '@nestjs/throttler';
import { APP_GUARD } from '@nestjs/core';
import { NestExpressApplication }
from '@nestjs/platform-express';

import { join }
from 'path';

async function bootstrap() {
  const app =
await NestFactory.create<NestExpressApplication>(
  AppModule
);

  // DOZVOLJAVAMO FRONTEND SA 3000 PORTA
  app.enableCors({
    origin: 'http://localhost:3000',
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
