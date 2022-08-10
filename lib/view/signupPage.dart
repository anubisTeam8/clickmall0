import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1/colors.dart';
import 'package:task1/view/loginPage.dart';
import 'package:task1/widgets/widgets.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
              const TextInput(l: "User Name", i: Icon(Icons.person), o: false,),
              SizedBox(height: 20.h,),
              const TextInput(l: "Email", i: Icon(Icons.email), o: false,),
              SizedBox(height: 20.h,),
              const TextInput(l: "Password", i: Icon(Icons.lock), o: true),
              SizedBox(height: 20.h,),
              const TextInput(l: "Re-Password", i: Icon(Icons.lock), o: true),
              SizedBox(height: 40.h,),
              ElevatedButton(onPressed: () {},
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
                      onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));},
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
