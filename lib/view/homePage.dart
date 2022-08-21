import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task1/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:task1/controllers/page1Cont.dart';
import 'package:task1/services/getstorage.dart';
import 'package:task1/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final Page1Cont c = Get.put(Page1Cont());
  @override
  Widget build(BuildContext context) {
    return Obx(() => c.loading.value?const Center(child:CircularProgressIndicator()):
    ListView(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 50.h),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi ${MyDataBase.getName()}", style: TextStyle(color: orange, fontSize: 20.sp),),
                Text("Find Your Resturant", style: TextStyle(color: gray, fontSize: 18.sp, fontWeight: FontWeight.bold),)
              ],
            ),
            Container(
              padding: EdgeInsets.all(7.w),
              decoration: BoxDecoration(
                color: white,
                boxShadow: [BoxShadow(color: gray.withOpacity(0.5), spreadRadius: 1, blurRadius: 5)],
                borderRadius: BorderRadius.circular(50.w),
              ),
              child: const Icon(Icons.notifications, color: gray,),
            )
          ],
        ),
        SizedBox(height: 15.h,),
        const CupertinoSearchTextField(),
        SizedBox(height: 15.h,),
        SizedBox(
          height: 100.h,
          child: CarouselSlider(
              items: c.ads.map((e) => Image.network(
                  "http://abdo1572001-003-site8.atempurl.com/storage/app/${e.photo}",
                  fit: BoxFit.fitWidth, width: double.infinity)).toList(),
              options: CarouselOptions(
                autoPlay: true,
                // enlargeCenterPage: true,
              )),
        ),
        SizedBox(height: 15.h,),
        ListView.builder(
          itemCount: c.items.length, shrinkWrap: true,
          itemBuilder: (context, index) => Page1List(data: c.items[index]),
        ),
      ],
    ));
  }
}
