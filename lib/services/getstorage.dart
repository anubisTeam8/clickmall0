import 'package:get_storage/get_storage.dart';

class MyDataBase {
  static final box = GetStorage();

  static insertToken({required String token}) async {
    await box.write('token', token);}

  static insertInfo({
    required String token, required String email, required String phone,
    required String name, required String type}) async {
    await box.write('token', token);
    await box.write('phone', phone);
    await box.write('email', email);
    await box.write('name', name);
    await box.write('type', type);
  }

  static Future<void> removeDate() async {
    await box.remove('token');
    await box.remove('phone');
    await box.remove('email');
    await box.remove('name');
    await box.remove('type');
  }

  static String getToken() => box.read('token') ?? '';
  static String getPhone() => box.read('phone') ?? '';
  static String getEmail() => box.read('email') ?? '';
  static String getName() => box.read('name') ?? '';
  static String getType() => box.read('type') ?? '';
}
