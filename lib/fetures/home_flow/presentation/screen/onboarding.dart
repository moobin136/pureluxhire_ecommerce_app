import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pureluxhire_ecommerce_app/core/const/app_colors.dart';
import 'package:pureluxhire_ecommerce_app/fetures/home_flow/presentation/wigets/button.dart';
import '../../controller/onboding_controllre.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    OnbodingControllre onbodingControllre = Get.put(OnbodingControllre());
    final siz = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColor.bacgourdColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 30.h),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: siz.height * 0.7,
                  child: PageView.builder(
                    itemCount: onbodingControllre.pagList.length,
                    onPageChanged: (index) =>
                        onbodingControllre.updateIndex(index),
                    itemBuilder: (context, index) {
                      return SizedBox(child: onbodingControllre.pagList[index]);
                    },
                  ),
                ),

                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(onbodingControllre.pagList.length, (
                      index,
                    ) {
                      bool isSelected =
                          onbodingControllre.currentPageIndex.value == index;

                      return AnimatedContainer(
                        duration: const Duration(
                          milliseconds: 300,
                        ), // smooth animation
                        width: isSelected ? 22.w : 8.w,
                        height: 8.h,
                        margin: EdgeInsets.symmetric(horizontal: 3.w),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColor.indexSeltdColro
                              : AppColor.noSletdColor,
                          borderRadius: BorderRadius.circular(
                            isSelected ? 10 : 50,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: 20.h),
                customOnbodingButton(onTap: onTapSkipButton, text: 'Skip'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTapSkipButton() {
    Get.offNamed('/rolingScreen');
    print('rolignscren');
  }
}
