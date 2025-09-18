import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/const/app_images.dart';
import '../presentation/wigets/slider.dart';

class OnbodingControllre extends GetxController {
  var currentPageIndex = 0.obs;
  final List<Widget> pagList = [
    ///1
    SliderWigets(
      titileText: 'Welcome to',
      imagePath: AppImages.onboding1PNG,
      textSecend: 'Where culture meets conscious fashion',
      textlast: 'Discover pre-loved and unworn South Asian clothing',
    ),
    ///2
    SliderWigets(
      titileText: 'Find your Thread',
      sizedBox: SizedBox(height: 30.h),
      imagePath: AppImages.onboding2PNG,
      textSecend: 'Shop timeless pieces with a story',
      textlast:
          'Find saris, lehengas, casual wear, gently worn or brand new at affordable prices',
    ),
    ///3
    SliderWigets(
      titileText: 'Sell With Purpose',
      sizedBox: SizedBox(height: 30.h),
      imagePath: AppImages.onboding3PNG,
      textSecend: 'Give your outfits a second life',
      textlast:
          'Free up wardrobe space and pass on garments that deserve to be loved again',
    ),

    ///4
    SliderWigets(
      titileText: 'Sew Sustainably',
      sizedBox: SizedBox(height: 30.h),
      imagePath: AppImages.onboding4PNG,
      textSecend: 'Give your outfits a second life',
      textlast:
          'Free up wardrobe space and pass on garments that deserve to be loved again',
    ),

    ///5
    SliderWigets(
      titileText: '',
      sizedBox: SizedBox(height: 30.h),
      imagePath: AppImages.onboding5PNG,
      textSecend: 'Loved Once. Loved Again',
      textlast:
          'Share your décor - from florals and drapes to candles and lighting - and give it the celebration it deserves all over again',
    ),
  ];

  void updateIndex(var index) {
    currentPageIndex.value = index;
  }
}


