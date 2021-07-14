import 'package:get/get.dart';
import 'package:new_wassa/views/screens/OnboardingScreen/OnboardingScreen.dart';
import 'package:new_wassa/views/screens/language/language.dart';
import 'package:new_wassa/views/screens/login/login.dart';

abstract class AppRoutes {
  static List<GetPage> get routes => [
        GetPage(name: '/onboarding', page: () => OnboardingScreen()),
        GetPage(name: '/', page: () => Login()),
        GetPage(name: '/languge', page: () => Language()),

        // GetPage(name: '/', page: () => UserPage()),
      ];
}
