import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../colors.dart';
import '../controllers/viewallCont.dart';
import '../widgets/widgets.dart';

class ViewAllPage extends StatelessWidget {
  ViewAllPage({Key? key}) : super(key: key);
  final ViewAllCont c = Get.put(ViewAllCont());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => c.loading.value?const Center(child: CircularProgressIndicator(),):
    Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 50.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {Get.back();},
                child: Container(
                  padding: EdgeInsets.all(7.w),
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [BoxShadow(color: gray.withOpacity(0.5), spreadRadius: 1, blurRadius: 5)],
                    borderRadius: BorderRadius.circular(50.w),
                  ),
                  child: Icon(Icons.arrow_back, color: gray, size: 24.w,),
                ),
              ),
              ListView.builder(
                itemCount: c.data.value?.res?.length??0, shrinkWrap: true,
                itemBuilder: (context, index) => ItemsFav(
                  t: "${c.data.value?.res?[index].nameE}",
                  t2: "${c.data.value?.res?[index].address}",
                  p: "${c.data.value?.res?[index].photo}", f: false,
                ),
              ),
            ],
          ),
      ),
      ))
    );
  }
}
