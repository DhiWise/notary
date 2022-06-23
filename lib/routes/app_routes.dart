import 'package:notaryyy/presentation/android_1_screen/android_1_screen.dart';
import 'package:notaryyy/presentation/android_1_screen/binding/android_1_binding.dart';
import 'package:notaryyy/presentation/android_2_screen/android_2_screen.dart';
import 'package:notaryyy/presentation/android_2_screen/binding/android_2_binding.dart';
import 'package:notaryyy/presentation/android_4_screen/android_4_screen.dart';
import 'package:notaryyy/presentation/android_4_screen/binding/android_4_binding.dart';
import 'package:notaryyy/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:notaryyy/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String android1Screen = '/android_1_screen';

  static String android2Screen = '/android_2_screen';

  static String android4Screen = '/android_4_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: android1Screen,
      page: () => Android1Screen(),
      bindings: [
        Android1Binding(),
      ],
    ),
    GetPage(
      name: android2Screen,
      page: () => Android2Screen(),
      bindings: [
        Android2Binding(),
      ],
    ),
    GetPage(
      name: android4Screen,
      page: () => Android4Screen(),
      bindings: [
        Android4Binding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => Android1Screen(),
      bindings: [
        Android1Binding(),
      ],
    )
  ];
}
