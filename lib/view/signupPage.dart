import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task1/colors.dart';
import 'package:task1/widgets/widgets.dart';
import '../controllers/authCont.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);
  final LogCont c = Get.put(LogCont());
  final RxString code = ''.obs;
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController cc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 73.h,),
              SvgPicture.asset("assets/logo.svg"),
              Text("Sign Up", style: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.bold)),
              SizedBox(height: 12.h,),
              Text("Add your details to sign up", style: TextStyle(color: gray, fontSize: 14.sp),),
              SizedBox(height: 50.h,),
              TextInput(t: name, l: "User Name", i: Icon(Icons.person, size: 22.sp,), o: false,),
              SizedBox(height: 20.h,),
              TextInput(t: email, l: "Email", i: Icon(Icons.email, size: 22.sp,), o: false,),
              SizedBox(height: 20.h,),
              TextInput(t: pass, l: "Password", i: Icon(Icons.lock, size: 22.sp,), o: true),
              SizedBox(height: 20.h,),
              TextInput(t: phone, l: "Phone", i: Icon(Icons.phone, size: 22.sp,), o: true),
              SizedBox(height: 40.h,),
              ElevatedButton(onPressed: () {
                if (email.text==''||pass.text==''||phone.text==''||name.text=='') {
                  Get.snackbar("Error Singing up", "You need to fill all text fields");
                } else if (pass.text.length < 6) {
                  Get.snackbar("Error Singing up", "Password must be at least 6 letters");
                }  else if (!phone.text.isNumericOnly) {
                  Get.snackbar("Error Singing up", "Phone number must be numbers only");
                }  else if (!email.text.contains("@")) {
                  Get.snackbar("Error With Email", "Please enter a correct email format");
                } else {
                  c.checkMail(email.text);
                  Get.defaultDialog(
                    title: "Email Verification", barrierDismissible: false,
                    content: ListView(
                      shrinkWrap: true,
                      children: [
                        const Center(child: Text("Enter the code sent to")),
                        Center(child: Text(email.text)),
                        PinCodeTextField(
                          appContext: context, length: 6, controller: cc,
                          keyboardType: TextInputType.number,
                          onChanged: (v) {code.value = v;},
                          onCompleted: (v) {
                            if (code.value==c.check.value?.num.toString()) {
                              Get.back(); Get.back();
                              c.signupApi(name.text, phone.text, email.text, pass.text);
                            } else {
                                cc.clear();
                                Get.snackbar("Error Singing up", "The code is incorrect");
                            }
                            },
                      ),
                    ]
                    ),
                  );
                }
              },
                style: ElevatedButton.styleFrom(
                    primary: orange,
                    padding: EdgeInsets.symmetric(horizontal: 125.w, vertical: 15.h),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.w))
                ),
                child: Text("Sign Up", style: TextStyle(fontSize: 14.sp),),
              ),
              SizedBox(height: 62.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ", style: TextStyle(color: gray, fontSize: 14.sp),),
                  GestureDetector(
                      onTap: () {Get.back();},
                      child: Text("Login", style: TextStyle(color: orange, fontSize: 14.sp),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
