import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wassa/views/screens/login/components/networkGroup.dart';
import 'package:new_wassa/views/screens/login/components/separator.dart';
import 'package:provider/provider.dart';

import 'package:new_wassa/app/scaffoldPlatform.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:new_wassa/views/components/linkButton.dart';
import 'package:new_wassa/views/components/platformTextFieldForm.dart';
import 'package:new_wassa/views/components/verticalSeparator.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';

import 'package:permission_handler/permission_handler.dart';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';



GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = new TextEditingController();

  TextEditingController password = new TextEditingController();
  final RoundedLoadingButtonController _btnController1 =
      RoundedLoadingButtonController();

  final RoundedLoadingButtonController _btnController2 =
      RoundedLoadingButtonController();

  void _doSomething(RoundedLoadingButtonController controller) async {
    Timer(Duration(seconds: 3), () {
      controller.success();
    });
  }

  _showLoading() {
    EasyLoading.show(
      status: 'Chargement...',
      maskType: EasyLoadingMaskType.black,
    );
    EasyLoading.instance.loadingStyle = EasyLoadingStyle.custom;
    EasyLoading.instance.maskType = EasyLoadingMaskType.black;
    EasyLoading.instance.animationStyle = EasyLoadingAnimationStyle.opacity;
    EasyLoading.instance.indicatorType = EasyLoadingIndicatorType.pulse;
  }

  _showError(msg) {
    EasyLoading.showError(msg);
    EasyLoading.instance.loadingStyle = EasyLoadingStyle.custom;
    EasyLoading.instance.maskType = EasyLoadingMaskType.black;
    EasyLoading.instance.animationStyle = EasyLoadingAnimationStyle.opacity;
    EasyLoading.instance.indicatorType = EasyLoadingIndicatorType.pulse;
  }

  _disableLoading() {
    EasyLoading.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _orientation = MediaQuery.of(context).orientation;
    final RoundedLoadingButtonController _btnController =
        RoundedLoadingButtonController();
    void _doSomething(RoundedLoadingButtonController controller) async {
      Timer(Duration(seconds: 3), () {
        controller.success();
      });
    }

    return ScaffoldPlatform(
        appBarTitle: "Wassa Wassa",
        activeBackButton: false,
        appBarIconColor: Colors.black,
        backgroundColor: Colors.white,
        drawer: Container(),
        leading: Container(),
        scaffoldState: _drawerKey,
        titleColor: Colors.black,
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: SC.width(.085)),
              children: [
                SizedBox(
                  height: _orientation == Orientation.portrait
                      ? _size.height * .375
                      : _size.width * .375,
                  child: Form(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      PlatformTextFieldForm.textFieldPlatform(
                          title: 'Email',
                          verticalContentPadding: SC.height(.0175),
                          controller: email,
                          enabled: true,
                          isPassword: false,
                          suffix: Container()),
                      VerticalSeparator(
                        height: .0175,
                      ),
                      PlatformTextFieldForm.textFieldPlatform(
                          title: 'Mot de passe',
                          isPassword: true,
                          verticalContentPadding: SC.height(.0175),
                          controller: password,
                          enabled: true,
                          suffix: Container()),
                    ],
                  )),
                ),
                VerticalSeparator(height: .065),
                RoundedLoadingButton(
                  child: Text('Tap me!', style: TextStyle(color: Colors.white)),
                  controller: _btnController,
                  onPressed: () => _doSomething(_btnController),
                ),
                RoundedLoadingButton(
                  height: 7.0.h,
                  color: blueFont,
                  child: Text('Connexion', style: buttonStyle),
                  controller: _btnController,
                  onPressed: () => _doSomething(_btnController),
                ),
                VerticalSeparator(height: .0175),
                RoundedLoadingButton(
                  height: 7.0.h,
                  color: blackFont,
                  child: Text('Inscription', style: buttonStyle),
                  controller: _btnController,
                  onPressed: () => {},
                ),
                Separator(
                  title: 'ou utiliser',
                ),
                NetworkGroup(),
                VerticalSeparator(
                  height: .0175,
                ),
                LinkButton(
                  title: "Avez-vous oublié votre mot de pass ?",
                  onTap: () async {
                    Map<Permission, PermissionStatus> statuses =
                        await [Permission.photos].request();
                    print(statuses[Permission.photos]);
                  },
                ),
                VerticalSeparator(
                  height: 0,
                ),
              ],
            ),
          ],
        ));
  }
}
