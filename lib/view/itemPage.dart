import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  String dropValue = "-Select the size of meal-";
  int n = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
          children: [
            Image.network(
          "https://i.pinimg.com/originals/2c/c6/1e/2cc61eeaa1126be2517cd089c01ce1b9.jpg",
              height: 240.h, width: double.infinity,),
            Container(height: 240.h, color: black.withOpacity(0.15),),
            GestureDetector(
              onTap: () {Navigator.pop(context);},
              child: Container(
                margin: EdgeInsets.all(15.h),
                padding: EdgeInsets.all(7.w),
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [BoxShadow(color: gray.withOpacity(0.5), spreadRadius: 1, blurRadius: 5)],
                  borderRadius: BorderRadius.circular(50.w),
                ),
                child: Icon(Icons.arrow_back, color: gray, size: 24.w,),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 225,),
                Container(height: 444.h,
                  decoration: BoxDecoration(
                    color: white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.w),
                        topRight: Radius.circular(20.w)
                      )
                  ),
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 15.h),
                    children: [
                      SizedBox(height: 15.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Tomato Pasta ", style: TextStyle(color: black, fontSize: 20.sp, fontWeight: FontWeight.bold),),
                              Icon(Icons.star, color: orange, size: 23.w,),
                              Text("4.9", style: TextStyle(color: orange, fontSize: 14.sp),)
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10.w, top: 10.h),
                            padding: EdgeInsets.all(7.w),
                            decoration: BoxDecoration(
                              color: white,
                              boxShadow: [BoxShadow(color: gray.withOpacity(0.5), spreadRadius: 1, blurRadius: 5)],
                              borderRadius: BorderRadius.circular(50.w),
                            ),
                            child: Icon(Icons.favorite, color: gray, size: 24.w,),
                          ),
                        ],
                      ),
                      Text("\nDescription ", style: TextStyle(color: black, fontSize: 16.sp, fontWeight: FontWeight.bold),),
                      Text("This dish is sdfasdfojasdfjasdfjadf\n", style: TextStyle(color: gray, fontSize: 14.sp),),
                      const Divider(),
                      Text("Customize your order \n", style: TextStyle(color: black, fontSize: 16.sp, fontWeight: FontWeight.bold),),
                      Container(
                        color: Colors.grey[300],
                        // height: 100.h,
                        child: DropdownButton(
                          isExpanded: true,
                          value: dropValue, icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                          onChanged: (String? newValue) {setState(() {dropValue = newValue!;});},
                          items: ["-Select the size of meal-", "Small", "Medium", "Large"].map((e) {return DropdownMenuItem(
                            value: e,
                            child: Center(child: Text(e)),
                          );}).toList(),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text("Number of portions \n", style: TextStyle(color: black, fontSize: 16.sp, fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(onPressed: () {setState(() {n>1?n--:n=1;});},
                            style: ElevatedButton.styleFrom(
                                primary: orange,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.w))
                            ), child: const Text("-"),
                          ),
                          Container(
                            height: 30.h, width: 60.w, alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.w),
                              border: Border.all(color: orange)
                            ),
                            child: Text("$n", style: TextStyle(color: orange, fontSize: 14.sp),),
                          ),
                          ElevatedButton(onPressed: () {setState(() {n++;});},
                            style: ElevatedButton.styleFrom(
                                primary: orange,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.w))
                            ), child: const Text("+"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ]
      ),
    );
  }
}
