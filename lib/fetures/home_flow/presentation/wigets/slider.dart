import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/const/app_colors.dart';
import '../../../../core/const/app_images.dart';

class SliderWigets extends StatelessWidget {
  SliderWigets({
    super.key,
    required this.titileText,
    required this.imagePath,
    required this.textSecend,
    required this.textlast,
    this.sizedBox,
  });

  String titileText;
  String imagePath;
  String textSecend;
  String textlast;
  SizedBox? sizedBox;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titileText,
          style: TextStyle(
            color: AppColor.titleTexColor,
            fontSize: 34.sp,
            fontWeight: FontWeight.w500,
          ),
          //  SizedBox(height: 20.h),
        ),
        SizedBox(
          child:
              sizedBox ??
              Image.asset(AppImages.logoPNG, width: 206.w, height: 96.h),
        ),
        SizedBox(height: 30.h),
        Image.asset(imagePath),
        SizedBox(height: 30.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 47.5.w),
          child: Text(
            textAlign: TextAlign.center,
            textSecend,
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          textAlign: TextAlign.center,
          textlast,
          style: TextStyle(
            color: AppColor.lebelTexColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 40.h),
      ],
    );
  }
}
