import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/colors.dart';
import 'package:task1/view/itemPage.dart';
import 'package:task1/view/restPage.dart';

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
    return GestureDetector(
      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RestPage(
        i: i,
        t1: t1,
        t2: t2,
        r: r,
      )));},
      child: Padding(
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
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(right: 10.w),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.h),
              child: Image.network(fit: BoxFit.fitWidth, width: double.infinity,
                "https://i.pinimg.com/originals/2c/c6/1e/2cc61eeaa1126be2517cd089c01ce1b9.jpg",)),
          Container(
            decoration: BoxDecoration(
                color: black.withOpacity(0.15),
                borderRadius: BorderRadius.circular(15.h)
            ),
          ),
          Text("meat", style: TextStyle(fontSize: 20.sp, color: white, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ItemPage()));},
      child: Container(width: double.infinity, height: 100,
        margin: EdgeInsets.all(5.w), padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
            color: white,
            boxShadow: [BoxShadow(color: gray.withOpacity(0.5), spreadRadius: 1, blurRadius: 5)],
            borderRadius: BorderRadius.circular(15.w)
        ),
        child: Row(
          children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.w),
            child: Image.network(height: 80.h, width: 65.h, fit: BoxFit.fitWidth,
              "https://i.pinimg.com/originals/2c/c6/1e/2cc61eeaa1126be2517cd089c01ce1b9.jpg",
            ),
          ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\n  Pizza", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),),
                Text("  Cafe - Western Food", style: TextStyle(color: gray, fontSize: 12.sp),),
                Row(
                  children: [
                    SizedBox(width: 5.w,),
                    Icon(Icons.star, color: orange, size: 18.w,),
                    Text(" 4.9", style: TextStyle(color: orange, fontSize: 12.sp),),
                    Text(" (124 Ratings)", style: TextStyle(color: gray, fontSize: 12.sp))
                  ],
                )
              ],
            ),
            SizedBox(width: 100.w,),
            const Text("Details", style: TextStyle(color: orange),),
          ],
        ),
      ),
    );
  }
}

class ItemsFav extends StatelessWidget {
  const ItemsFav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ItemPage()));},
      child: Container(width: double.infinity, height: 100,
        margin: EdgeInsets.all(5.w), padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
            color: white,
            boxShadow: [BoxShadow(color: gray.withOpacity(0.5), spreadRadius: 1, blurRadius: 5)],
            borderRadius: BorderRadius.circular(15.w)
        ),
        child: Row(
          children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.w),
            child: Image.network(height: 80.h, width: 65.h, fit: BoxFit.fitWidth,
              "https://i.pinimg.com/originals/2c/c6/1e/2cc61eeaa1126be2517cd089c01ce1b9.jpg",
            ),
          ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\n  Pizza", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),),
                Text("  Cafe - Western Food", style: TextStyle(color: gray, fontSize: 12.sp),),
                Row(
                  children: [
                    SizedBox(width: 5.w,),
                    Icon(Icons.star, color: orange, size: 18.w,),
                    Text(" 4.9", style: TextStyle(color: orange, fontSize: 12.sp),),
                    Text(" (124 Ratings)", style: TextStyle(color: gray, fontSize: 12.sp))
                  ],
                )
              ],
            ),
            SizedBox(width: 95.w,),
            Icon(Icons.favorite, color: red, size: 25.w),
          ],
        ),
      ),
    );
  }
}

class ItemsCart extends StatelessWidget {
  const ItemsCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2.5.h),
      child: SizedBox(
        child: ListTile(
          tileColor: lgray,
          title: Text("Beef Burger x1", style: TextStyle(fontSize: 13.sp),),
          trailing: Text(r"$17", style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}

