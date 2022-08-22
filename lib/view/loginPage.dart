import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task1/colors.dart';
import 'package:task1/view/loginPage2.dart';
import 'package:task1/view/signupPage.dart';
import 'package:task1/widgets/widgets.dart';
import '../controllers/authCont.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final LogCont c = Get.put(LogCont());
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final RxInt x = 0.obs;
  final RxString code = "".obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => c.loading.value?const CircularProgressIndicator():
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 73.h,),
              SvgPicture.asset("assets/logo.svg"),
              Text("Login", style: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.bold)),
              SizedBox(height: 12.h,),
              Text("Add your details to login", style: TextStyle(color: gray, fontSize: 14.sp),),
              SizedBox(height: 50.h,),
              TextInput(t: email, l: "Email", i: Icon(Icons.email, size: 22.sp,), o: false,),
              SizedBox(height: 20.h,),
              TextInput(t: pass, l: "Password", i: Icon(Icons.lock, size: 22.sp,), o: true),
              GestureDetector(onTap: () {
                final TextEditingController cc = TextEditingController();
                Get.defaultDialog(
                  title: "Reset Password", textConfirm: "Confirm",
                  confirmTextColor: white, barrierDismissible: false,
                  content: Obx(() {
                  if (x.value==0) {
                    return TextInput(t: email, l: "Enter your email", i: Icon(Icons.email, size: 22.sp,), o: false,);
                    } else if (x.value == 1) {
                    return ListView(
                      shrinkWrap: true,
                      children: [
                        const Center(child: Text("Enter the code sent to")),
                        Center(child: Text(email.text)),
                        PinCodeTextField(
                          appContext: context, length: 6, controller: cc,
                          keyboardType: TextInputType.number,
                          onChanged: (v) {code.value = v;},
                        ),
                      ]
                  );} else {
                    return TextInput(t: pass, l: "Enter your new password", i: Icon(Icons.email, size: 22.sp,), o: true,);
                  }
                  }
                  ),
                  onConfirm: () {
                    if (x.value==0) {
                      if (email.text.contains("@")) {x.value++; c.checkMail(email.text);}
                      else {cc.clear();
                      Get.snackbar("Error With Email", "Please enter a correct email format");}
                    } else if (x.value == 1){
                        if (code.value==c.check.value?.num.toString()) {
                          x.value++;
                        } else {
                        cc.clear();
                        Get.snackbar("Error With Code", "The code is incorrect");
                        }
                    } else {c.resetPass(email.text, pass.text); Get.back();}
                  }
                  ).then((val){x.value = 0;});
              },
                child: Text("\n                                                              "
                    "Forget Password?", style: TextStyle(fontSize: 11.sp, color: orange),),
              ),
              SizedBox(height: 85.h,),
              ElevatedButton(onPressed: () {
                if (email.text==''||pass.text=='') {
                  Get.snackbar("Error Logging in", "Email or password are empty");
                } else {
                  c.loginApi(email.text, pass.text, "loginuser");
                }
              },
                style: ElevatedButton.styleFrom(
                    primary: orange,
                    padding: EdgeInsets.symmetric(horizontal: 125.w, vertical: 15.h),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.w))
                ),
                child: Text("Log in", style: TextStyle(fontSize: 14.sp),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("\nLogin as ", style: TextStyle(color: gray, fontSize: 14.sp)),
                  GestureDetector(
                      onTap: () {Get.to(() => LoginPage2(t: "owner"));},
                      child: Text("Owner", style: TextStyle(color: orange, fontSize: 14.sp))
                  ),
                  Text(" or ", style: TextStyle(color: gray, fontSize: 14.sp)),
                  GestureDetector(
                      onTap: () {Get.to(() => LoginPage2(t: "driver"));},
                      child: Text("Driver", style: TextStyle(color: orange, fontSize: 14.sp))),
                ],),
              SizedBox(height: 105.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ", style: TextStyle(color: gray, fontSize: 14.sp),),
                  GestureDetector(
                      onTap: () {Get.to(() => SignupPage());},
                      child: Text("Sign up", style: TextStyle(color: orange, fontSize: 14.sp),))
                ],
              )
            ],
          ),
        )
        ),
      ),
    );
  }
}
