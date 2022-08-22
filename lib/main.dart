import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task1/services/getstorage.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task1/view/loginPage.dart';
import 'package:task1/view/navigationPage.dart';
import 'controllers/authCont.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final LogCont c = Get.put(LogCont());
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => GetMaterialApp(
          // home: Test(),
        home: Obx(() {
          if (c.token.value=="") {return LoginPage();}
          else {
            if (MyDataBase.getType() == "User") {return const NavigationPage();}
            else if (MyDataBase.getType() == "Rest") {return const Center(child: Text("Resturant"));}
            else {return const Center(child: Text("Driver"));}
            }
        }),
      )
    );
  }
}
