import { Body, Controller, Get, Post, Query } from '@nestjs/common';
import { AuthService } from './auth.service';
import { Throttle } from '@nestjs/throttler';

@Controller('auth')
export class AuthController {
  constructor(private service: AuthService) {}

  @Post('create-first-admin')
  createFirstAdmin() {
    return this.service.createFirstAdmin();
  }

@Throttle({ default: { limit: 5, ttl: 900000 } })


  @Post('login')
  login(@Body() body: any) {
    return this.service.login(body);
  }
@Get('users')
getUsers() {
  return this.service.getUsers();
}

@Post('users')
createUser(@Body() body: any) {
  return this.service.createUser(body);
}

@Post('change-password')
changePassword(@Body() body: any) {
  return this.service.changePassword(body);
}

@Post('admin-change-password')
adminChangePassword(@Body() body: any) {
  return this.service.adminChangePassword(body);
}

@Post('delete-user')
deleteUser(@Body() body: any) {
  return this.service.deleteUser(Number(body.id));
}


@Get('devices')
getUserDevices(@Query('userId') userId: string) {
  return this.service.getUserDevices(Number(userId));
}

@Post('devices/delete')
deleteUserDevice(@Body() body: any) {
  return this.service.deleteUserDevice(Number(body.id));
}

@Post('devices/delete-all')
deleteAllUserDevices(@Body() body: any) {
  return this.service.deleteAllUserDevices(Number(body.userId));
}

@Post('users/update')
updateUser(@Body() body: any) {
  return this.service.updateUser(body);
}

@Get('users/archived')
getArchivedUsers() {
  return this.service.getArchivedUsers();
}

@Post('restore-user')
restoreUser(@Body() body: any) {
  return this.service.restoreUser(Number(body.id));
}

@Post('users/copy-demo-data')
copyDemoDataToUser(@Body() body: any) {
  return this.service.copyDemoDataToUser(Number(body.userId));
}



}