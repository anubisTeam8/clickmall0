import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1/colors.dart';
import 'package:task1/view/navigationPage.dart';
import 'package:task1/view/signupPage.dart';
import 'package:task1/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 73.h,),
              SvgPicture.asset("assets/logo.svg"),
              Text("Login", style: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.bold)),
              SizedBox(height: 12.h,),
              Text("Add your details to login", style: TextStyle(color: gray, fontSize: 14.sp),),
              SizedBox(height: 50.h,),
              const TextInput(l: "Email", i: Icon(Icons.email), o: false,),
              SizedBox(height: 20.h,),
              const TextInput(l: "Password", i: Icon(Icons.lock), o: true),
              GestureDetector(onTap: () {},
                child: Text("\n                                                              "
                    "Forget Password?", style: TextStyle(fontSize: 11.sp, color: orange),),
              ),
              SizedBox(height: 85.h,),
              ElevatedButton(onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NavigationPage()));},
              style: ElevatedButton.styleFrom(
                primary: orange,
                padding: EdgeInsets.symmetric(horizontal: 125.w, vertical: 15.h),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.w))
              ),
                child: Text("Log in", style: TextStyle(fontSize: 14.sp),),
              ),
              SizedBox(height: 130.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ", style: TextStyle(color: gray, fontSize: 14.sp),),
                  GestureDetector(
                      onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignupPage()));},
                      child: Text("Sign up", style: TextStyle(color: orange, fontSize: 14.sp),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
