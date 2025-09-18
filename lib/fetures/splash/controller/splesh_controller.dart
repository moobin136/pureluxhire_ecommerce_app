import 'package:get/get.dart';
import 'package:pureluxhire_ecommerce_app/fetures/home_flow/presentation/screen/onboarding.dart';

class SpleshController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    nexPageRoute();
  }

  Future<void> nexPageRoute() async {
    await Future.delayed(
      Duration(seconds: 3),
      () => Get.off(() => Onboarding()),
    );
  }
}
