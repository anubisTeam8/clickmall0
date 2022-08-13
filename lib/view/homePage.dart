import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:task1/widgets/widgets.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final List <String> imgList = const [
    "https://i1.sndcdn.com/avatars-000462059982-nr0vd4-original.jpg",
    "https://www.harpersbazaararabia.com/public/images/2019/09/23/hba-guccimfw-22.jpg",
    "https://i.pinimg.com/originals/2c/c6/1e/2cc61eeaa1126be2517cd089c01ce1b9.jpg",
    "https://www.telegraph.co.uk/content/dam/news/2019/05/15/TELEMMGLPICT000141182148_trans_NvBQzQNjv4BquOv8qdqAtg5F-Rc30df4dav0L-Zru66PfXG2lY91pQ0.jpeg"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 50.h),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi Luna", style: TextStyle(color: orange, fontSize: 20.sp),),
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
              items: imgList.map((e) => Image.network(e, fit: BoxFit.fitWidth, width: double.infinity)).toList(),
              options: CarouselOptions(
                autoPlay: true,
                // enlargeCenterPage: true,
              )),
        ),
        SizedBox(height: 15.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Near to you", style: TextStyle(color: gray, fontSize: 18.sp, fontWeight: FontWeight.bold),),
            GestureDetector(onTap: () {},
                child: Text("View all", style: TextStyle(color: orange, fontSize: 14.sp),)),
          ],
        ),
          GridView.count(crossAxisCount: 2, shrinkWrap: true,
            padding: EdgeInsets.only(top: 5.h), childAspectRatio: 1.1,
            children: List.generate(4, (index) => const RestCard(
              i:     "https://www.telegraph.co.uk/content/dam/news/2019/05/15/TELEMMGLPICT000141182148_trans_NvBQzQNjv4BquOv8qdqAtg5F-Rc30df4dav0L-Zru66PfXG2lY91pQ0.jpeg",
              t1: "Morreis Resturant",
              t2: "Egypt, Cairo",
              r: 4.5,
            )),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("New Restaurants", style: TextStyle(color: gray, fontSize: 18.sp, fontWeight: FontWeight.bold),),
            GestureDetector(onTap: () {},
                child: Text("View all", style: TextStyle(color: orange, fontSize: 14.sp),)),
          ],
        ),
        GridView.count(crossAxisCount: 2, shrinkWrap: true,
          padding: EdgeInsets.only(top: 5.h), childAspectRatio: 1.1,
          children: List.generate(4, (index) => const RestCard(
            i:     "https://www.telegraph.co.uk/content/dam/news/2019/05/15/TELEMMGLPICT000141182148_trans_NvBQzQNjv4BquOv8qdqAtg5F-Rc30df4dav0L-Zru66PfXG2lY91pQ0.jpeg",
            t1: "Morreis Resturant",
            t2: "Egypt, Cairo",
            r: 4.5,
          )),
        ),
      ],
    );
  }
}
