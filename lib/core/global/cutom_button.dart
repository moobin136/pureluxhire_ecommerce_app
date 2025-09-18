import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/app_colors.dart' show AppColor;

class CusomButton extends StatelessWidget {
  CusomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.bgcolor,
    this.bordercolor,
    this.textcolor,
    this.borderwidth,
  });
  VoidCallback onTap;
  String text;
  Color? bgcolor;
  Color? bordercolor;
  Color? textcolor;
  double? borderwidth;

  @override
  Widget build(BuildContext context) {
    final siz = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: bgcolor ?? AppColor.primaricolum,
          border: Border.all(
            width: borderwidth ?? 0,
            color: bordercolor ?? Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: siz.width * 0.28,
            vertical: siz.height * 0.02,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15.sp,
              color: textcolor ?? Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
