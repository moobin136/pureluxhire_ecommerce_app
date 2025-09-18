import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/const/app_colors.dart';

class customOnbodingButton extends StatelessWidget {
  customOnbodingButton({super.key, required this.text, required this.onTap});
  VoidCallback onTap;
  String text;

  @override
  Widget build(BuildContext context) {
    final siz = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.buttonTexColor,
          borderRadius: BorderRadius.circular(60.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: siz.width * 0.05,
            vertical: siz.height * 0.02,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
