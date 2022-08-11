import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/colors.dart';
import 'package:task1/widgets/widgets.dart';

class RestPage extends StatelessWidget {
  const RestPage({Key? key, required this.i, required this.t1, required this.t2, required this.r}) : super(key: key);
  final String i;
  final String t1;
  final String t2;
  final double r;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
              itemCount: 4,
              scrollDirection: Axis.horizontal, padding: EdgeInsets.symmetric(horizontal: 10.w),
              itemBuilder: (context, index) =>  const Categories(),
            ),
          ),
          SizedBox(height: 10.h,),
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) => const Items(),
            ),
          )
        ],
      ),
    );
  }
}
