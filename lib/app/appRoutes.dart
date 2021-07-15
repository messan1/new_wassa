import 'package:get/get.dart';
import 'package:new_wassa/views/screens/OnboardingScreen/OnboardingScreen.dart';
import 'package:new_wassa/views/screens/language/language.dart';
import 'package:new_wassa/views/screens/login/login.dart';
import 'package:new_wassa/views/screens/signup/pages/accountAccess.dart';
import 'package:new_wassa/views/screens/signup/signup.dart';

abstract class AppRoutes {
  static List<GetPage> get routes => [
        GetPage(name: '/onboarding', page: () => OnboardingScreen()),
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: '/', page: () => SignUp()),
        GetPage(name: '/account', page: () => AccountAccess()),
        GetPage(name: '/languge', page: () => Language()),

        // GetPage(name: '/', page: () => UserPage()),
      ];
}
