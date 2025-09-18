import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pureluxhire_ecommerce_app/core/const/app_colors.dart';
import 'package:pureluxhire_ecommerce_app/core/const/app_images.dart';
import 'package:pureluxhire_ecommerce_app/core/global/cutom_button.dart';

class RolingScreen extends StatelessWidget {
  const RolingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bacgourdColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: 56.w,
              vertical: 50.h,
            ),
            child: Column(
              children: [
                SizedBox(height: 18.h),
                Text(
                  'Get Started',
                  style: TextStyle(
                    color: AppColor.titleTexColor,
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 50.h),
                Image.asset(AppImages.onboding6PNG),
                SizedBox(height: 50.h),
                CusomButton(text: 'Sign In', onTap: onTapSingUP),
                SizedBox(height: 10.h),
                CusomButton(
                  onTap: onTapSignIn,
                  text: 'Sign up',
                  bordercolor: AppColor.primaricolum,
                  borderwidth: 1,
                  textcolor: Colors.black,
                  bgcolor: Colors.transparent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTapSingUP() {}

  void onTapSignIn() {}
}
