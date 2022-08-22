import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:task1/models/CheckClass.dart';
import 'package:task1/services/getstorage.dart';
import '../models/ErrorModel.dart';
import '../models/UserModel.dart';

class LogCont extends GetxController {
  Rxn<UserModel> data = Rxn();
  Rxn<ErrorModel> error = Rxn();
  Rxn<CheckClass> check = Rxn();
  RxBool loading = false.obs;
  RxString errorMsg = ''.obs;
  RxString token = ''.obs;
  Future loginApi(String email, String pass, String api) async {
      try {
        loading.value = true;
        var request = http.MultipartRequest('POST', Uri.parse('http://abdo1572001-003-site8.atempurl.com/api/$api'));
        request.fields.addAll({
          'email': email,
          'pass': pass,
          'fire': '1'
        });
        http.StreamedResponse response = await request.send();
        var res = await response.stream.bytesToString();
        if (response.statusCode == 200) {
          var fres = jsonDecode(res);
          print(fres);
          if (fres["status"]) {
            data.value = UserModel.fromJson(fres);
            MyDataBase.insertInfo(
              email: '${data.value?.user?.email}', phone: "${data.value?.user?.email}",
              token: '${data.value?.token}', name: "${data.value?.user?.name}",
              type: '${data.value?.user?.type}');
            token.value = MyDataBase.getToken();
            errorMsg.value = '';
          } else {
            error.value = ErrorModel.fromJson(fres);
            errorMsg.value = "${error.value?.msg}";
          }
        } else {
            errorMsg.value = 'Server Error';
        }
        loading.value = false;
        errorMsg.value == ""?null:Get.snackbar("Error Logging in", errorMsg.value);
      } catch (e) {
        print(e.toString());
        errorMsg.value = "There is no internet connection";
        loading.value = false;
        errorMsg.value == ""?null:Get.snackbar("Error Logging in", errorMsg.value);
      }
  }
  Future signupApi(String name, String phone, String email, String pass) async {
    try {
      loading.value = true;
      var request = http.MultipartRequest('POST', Uri.parse('http://abdo1572001-003-site8.atempurl.com/api/signup'));
      request.fields.addAll({
        'name': name,
        'phone': phone,
        'email': email,
        'password': pass,
        'fire': '123'
      });
      http.StreamedResponse response = await request.send();
      var res = await response.stream.bytesToString();
      if (response.statusCode == 200) {
        var fres = jsonDecode(res);
        print(fres);
        if (fres["status"]) {
          data.value = UserModel.fromJson(fres);
          print(data.value?.user?.email);
          // MyDataBase.insertData(token: data.value?.token?.obs);
          errorMsg.value = '';
        } else {
          error.value = ErrorModel.fromJson(fres);
          errorMsg.value = "${error.value?.msg}";
        }
      } else {
        errorMsg.value = 'Server Error';
      }
      loading.value = false;
      errorMsg.value == ""?null:Get.snackbar("Error Signing up", errorMsg.value);
    } catch (e) {
      print(e.toString());
      errorMsg.value = "There is no internet connection";
      loading.value = false;
      errorMsg.value == ""?null:Get.snackbar("Error Signing up", errorMsg.value);
    }
  }
  Future checkMail(String email) async {
    try {
      var request = http.MultipartRequest('POST', Uri.parse('http://abdo1572001-003-site8.atempurl.com/api/send_mail'));
      request.fields.addAll({'email': email,});
      http.StreamedResponse response = await request.send();
      var res = await response.stream.bytesToString();
      var fres = jsonDecode(res);
      print(fres);
      check.value = CheckClass.fromJson(fres);
      print(check.value?.num.toString());
    } catch (e) {
      print(e.toString());
    }
  }
  Future resetPass(String email, String pass) async {
    try {
      var request = http.MultipartRequest('POST', Uri.parse('http://abdo1572001-003-site8.atempurl.com/api/forget'));
      request.fields.addAll({'email': email, 'password': pass});
      http.StreamedResponse response = await request.send();
      var res = await response.stream.bytesToString();
      var fres = jsonDecode(res);
      print(fres);
    } catch (e) {
      print(e.toString());
    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // MyDataBase.insertToken(token: "");
    token.value = MyDataBase.getToken();
    print(token.value);
  }
}
