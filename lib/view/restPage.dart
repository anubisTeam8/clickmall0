import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task1/colors.dart';
import 'package:task1/widgets/widgets.dart';
import '../controllers/restCont.dart';

class RestPage extends StatelessWidget {
  RestPage({Key? key, required this.i, required this.t1, required this.t2, required this.r}) : super(key: key);
  final String i;
  final String t1;
  final String t2;
  final double r;
  final RestCont c = Get.put(RestCont());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => c.loading.value?const Center(child: CircularProgressIndicator()):
    ListView(
        children: [
          Stack(
            // alignment: Alignment.center,
            children: [
              Image.network(i, height: 218.h, width: double.infinity,),
              Container(height: 218.h, color: black.withOpacity(0.15),),
              GestureDetector(
                onTap: () {Navigator.pop(context);},
                child: Container(
                  margin: EdgeInsets.all(7.w),
                  padding: EdgeInsets.all(7.w),
                  decoration: BoxDecoration(
                      color: white,
                      boxShadow: [BoxShadow(color: gray.withOpacity(0.5), spreadRadius: 1, blurRadius: 5)],
                      borderRadius: BorderRadius.circular(50.w),
                    ),
                    child: Icon(Icons.arrow_back, color: gray, size: 24.w,),
                ),
              ),
              Center(child: Column(
                children: [
                  SizedBox(height: 90.h,),
                  Text(t1, style: TextStyle(fontSize: 20.sp, color: white, fontWeight: FontWeight.bold),),
                ],
              ),),
              Column(
                children: [
                  SizedBox(height: 180.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on, color: orange, size: 23.w,),
                          Text(" $t2", style: TextStyle(color: white, fontSize: 12.sp),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: orange, size: 23.w,),
                          Text(" $r ", style: TextStyle(color: white, fontSize: 14.sp),)
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          Text("\n    Categories\n", style: TextStyle(color: black, fontSize: 18.sp, fontWeight: FontWeight.bold),),
          SizedBox(
            height: 75.h,
            child: ListView.builder(
              itemCount: c.data.value?.menu?.length, shrinkWrap: true,
              scrollDirection: Axis.horizontal, padding: EdgeInsets.symmetric(horizontal: 10.w),
              itemBuilder: (context, index) => Categories(
                i: "${c.data.value?.menu?[index].photo}",
                t: "${c.data.value?.menu?[index].nameE}",
                id: "${c.data.value?.menu?[index].id}",
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: c.data.value?.product?.length,
              itemBuilder: (context, index) => Items(
                t: "${c.data.value?.product?[index].nameE}",
                p: "${c.data.value?.product?[index].price}",
                i: "${c.data.value?.product?[index].photo}",
              ),
            ),
          )
        ],
      ))
    );
  }
}
