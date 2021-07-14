import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'appRoutes.dart';


class PlatformApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        //SizerUtil().init(constraints, orientation);
        return GetMaterialApp(
          builder: EasyLoading.init(),
          getPages: AppRoutes.routes,
          initialRoute: '/',
          defaultTransition: Transition.cupertino,
        );
      });
    });
  }
}
