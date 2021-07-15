import 'package:get/get.dart';
import 'package:new_wassa/views/screens/OnboardingScreen/OnboardingScreen.dart';
import 'package:new_wassa/views/screens/language/language.dart';
import 'package:new_wassa/views/screens/login/login.dart';
import 'package:new_wassa/views/screens/login/pages/resetPassword.dart';
import 'package:new_wassa/views/screens/signup/pages/accountAccess.dart';
import 'package:new_wassa/views/screens/signup/pages/addDocuments.dart';
import 'package:new_wassa/views/screens/signup/pages/userInfo.dart';
import 'package:new_wassa/views/screens/signup/signup.dart';

abstract class AppRoutes {
  static List<GetPage> get routes => [
        GetPage(name: '/onboarding', page: () => OnboardingScreen()),
        GetPage(name: '/Language', page: () => Language()),
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: '/SignUp', page: () => SignUp()),
        GetPage(name: '/AccountAccess', page: () => AccountAccess()),
        GetPage(name: '/UserInfo', page: () => UserInfo()),
        GetPage(name: '/', page: () => ResetPassword()),

        // GetPage(name: '/', page: () => UserPage()),
      ];
}