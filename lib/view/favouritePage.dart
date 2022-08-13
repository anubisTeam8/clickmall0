import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/widgets/widgets.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 50.h),
      itemCount: 3, shrinkWrap: true,
      itemBuilder: (context, index) => const ItemsFav(),
    );
  }
}
