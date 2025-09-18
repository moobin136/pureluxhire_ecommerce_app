import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';

import 'package:pureluxhire_ecommerce_app/core/const/app_images.dart';

import '../../controller/splesh_controller.dart';

// import '../../controller/splesh_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SpleshController spleshController = Get.put(SpleshController());
    return Scaffold(
      body: Center(
        child: Image.asset(AppImages.logoPNG, width: 447.w, height: 447.h),
      ),
    );
  }
}
