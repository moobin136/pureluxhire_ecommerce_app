import 'package:get/get.dart';

import '../fetures/home_flow/presentation/screen/roling_screen.dart';
import '../fetures/splash/presentation/screen/splesh_scrren.dart';

class Rotues {
  static const String splashScreen = '/splashScreen';
  static const String roloing = '/rolingScreen';

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: roloing, page: () => RolingScreen()),
  ];
}
