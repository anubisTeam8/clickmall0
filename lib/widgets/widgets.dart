import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task1/colors.dart';
import 'package:task1/controllers/restCont.dart';
import 'package:task1/controllers/viewallCont.dart';
import 'package:task1/models/Page1Class.dart';
import 'package:task1/view/itemPage.dart';
import 'package:task1/view/restPage.dart';
import 'package:task1/view/viewallPage.dart';

class TextInput extends StatelessWidget {
  const TextInput({Key? key, required this.t, required this.i, required this.l, required this.o}) : super(key: key);
  final TextEditingController t;
  final Icon i;
  final String l;
  final bool o;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h, width: 300.w,
      child: TextField(
        controller: t,
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
  const RestCard({Key? key, required this.t1, required this.t2, required this.r, required this.i, required this.id}) : super(key: key);
  final String i;
  final String t1;
  final String t2;
  final double r;
  final String id;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h, width: 165.w,
      child: GestureDetector(
        onTap: () {id_rest = id;
          Get.to(() => RestPage(
            i: i,
            t1: t1,
            t2: t2,
            r: r,
        ));},
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
                    Text("$t1                      ", style: TextStyle(fontSize: 10.sp),),
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
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key, required this.t, required this.i, required this.id}) : super(key: key);
  final String t;
  final String i;
  final String id;

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
  const Items({Key? key, required this.t, required this.i, required this.p}) : super(key: key);
  final String t;
  final String i;
  final String p;
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
              "http://abdo1572001-003-site8.atempurl.com/storage/app/$i",
            ),
          ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\n  $t", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),),
                Text(r"  Price: $" + p.toString(), style: TextStyle(color: gray, fontSize: 12.sp),),
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
  const ItemsFav({Key? key, required this.t, required this.t2, required this.p, required this.f}) : super(key: key);
  final String t;
  final String t2;
  final String p;
  final bool f;
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
              "http://abdo1572001-003-site8.atempurl.com/storage/app/$p",
            ),
          ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\n  $t", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),),
                Text("  $t2", style: TextStyle(color: gray, fontSize: 12.sp),),
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
            f?Icon(Icons.favorite, color: red, size: 25.w):const SizedBox(),
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

class Page1List extends StatelessWidget {
  const Page1List({Key? key, required this.data}) : super(key: key);
  final ListData data;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("${data.date?.nameE}", style: TextStyle(color: gray, fontSize: 18.sp, fontWeight: FontWeight.bold),),
            GestureDetector(onTap: () {
              id = "${data.date?.id}";
              Get.to(() => ViewAllPage());},
                child: Text("View all", style: TextStyle(color: orange, fontSize: 14.sp),)),
          ],
        ),
        Wrap(
          children: List.generate(data.rest?.length??0, (index) => RestCard(
            i:"http://abdo1572001-003-site8.atempurl.com/storage/app/${data.rest?[index].photo}",
            t1: "${data.rest?[index].nameE}",
            t2: "${data.rest?[index].address}",
            id: "${data.rest?[index].id}",
            r: 4.5,
          )),
        ),
      ],
    );
  }
}
