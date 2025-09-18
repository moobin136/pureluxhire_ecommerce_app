import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pureluxhire_ecommerce_app/core/const/app_colors.dart';
import 'package:pureluxhire_ecommerce_app/roots/rotues.dart';

import 'fetures/splash/presentation/screen/splesh_scrren.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      // minTextAdapt: true,
      // splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'pureluxhire_ecommerce_app',
          theme: ThemeData(
            primaryColor: Color(0xffFFFBF0),
            textTheme: TextTheme(
              bodyLarge: TextStyle(color: AppColor.bacgourdColor),
            ),
          ),
          home: SplashScreen(),

          getPages: Rotues.routes,
        );
      },
    );
  }
}
