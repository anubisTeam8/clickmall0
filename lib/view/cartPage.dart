import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/widgets/widgets.dart';

import '../colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      reverse: true,
      padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 40.h, bottom: 15.h),
      children: [
        ElevatedButton(onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: orange,
              padding: EdgeInsets.symmetric(horizontal: 125.w, vertical: 15.h),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.w))
          ),
          child: Text("Checkout", style: TextStyle(fontSize: 14.sp),),
        ),
        SizedBox(height: 15.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),),
            Text(r"$70", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900, color: orange),),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Delivery Cost", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),),
            Text(r"$2", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w900, color: orange),),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Sub Total", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),),
            Text(r"$70", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w900, color: orange),),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Delivery Instructions", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),),
            GestureDetector(
                onTap: () {},
                child: Text(r"+ Add Notes", style: TextStyle(fontSize: 14.sp, color: orange),)),
          ],
        ),
        const Divider(),
        SizedBox(
          height: 425.h,
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) => const ItemsCart(),
          ),
        )
      ],
    );
  }
}
