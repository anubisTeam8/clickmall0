import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/colors.dart';

class TextInput extends StatelessWidget {
  const TextInput({Key? key, required this.i, required this.l, required this.o}) : super(key: key);
  final Icon i;
  final String l;
  final bool o;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h, width: 300.w,
      child: TextField(
        obscureText: o,
        decoration: InputDecoration(
          hintText: l,
          prefixIcon: i,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.w),
          ),
        ),
      ),
    );
  }
}

class RestCard extends StatelessWidget {
  const RestCard({Key? key, required this.t1, required this.t2, required this.r, required this.i}) : super(key: key);
  final String i;
  final String t1;
  final String t2;
  final double r;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.h)
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.h), topRight: Radius.circular(15.h)
                ),
                child: Image.network(i, height: 75.h, fit: BoxFit.fitWidth, width: double.infinity,)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(t1, style: TextStyle(fontSize: 10.sp),),
                Icon(Icons.favorite_border, size: 18.w,),
              ],
            ),
            Row(children: [
              SizedBox(width: 10.h,),
              Icon(Icons.location_on, size: 15.w,),
              Text(t2, style: TextStyle(fontSize: 10.sp),)
            ],),
            Row(
              children: [
                SizedBox(width: 10.h,),
                Icon(Icons.star, color: orange, size: 15.w,),
                Text(r.toString(), style: TextStyle(fontSize: 10.sp),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
