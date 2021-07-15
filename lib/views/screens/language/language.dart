import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/route_manager.dart';
import 'package:new_wassa/app/scaffoldPlatform.dart';
import 'package:new_wassa/utils/Assistance/AuthAssistanceMethods.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:new_wassa/views/components/dropButton.dart';
import 'package:new_wassa/views/components/imageLoader.dart';
import 'package:new_wassa/views/components/platformTextFieldForm%20copy.dart';
import 'package:new_wassa/views/components/simpleButton.dart';
import 'package:new_wassa/views/components/verticalSeparator.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:sizer/sizer.dart';
import 'package:flag/flag.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  ButtonState stateOnlyText = ButtonState.idle;
  ButtonState stateTextWithIcon = ButtonState.idle;
  ButtonState stateTextWithIconMinWidthState = ButtonState.idle;
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  TextEditingController password = new TextEditingController();
  final RoundedLoadingButtonController _btnController2 =
      RoundedLoadingButtonController();

  void _doSomething(RoundedLoadingButtonController controller) async {
    Timer(Duration(seconds: 3), () {
      controller.success();
    });
  }

  String? accountType;
  TextEditingController email = new TextEditingController();
  TextEditingController confirmpassword = new TextEditingController();

  String emaildata = "";
  String passwordData = "";

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _orientation = MediaQuery.of(context).orientation;
    //final _userBloc = Provider.of<UserBloc>(context);

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

    @override
    void initState() {
      //  final _userBloc = Provider.of<UserBloc>(context, listen: false);

      super.initState();
    }

    _passNextPage() async {
      // ignore: unrelated_type_equality_checks
      if (password.text.isNotEmpty &&
          password.text == confirmpassword.text &&
          email.text.isNotEmpty &&
          accountType != null) {
        var testemail = await AuthAssistanceMethods.verifyemail(context);
        print(testemail);
        if (testemail == true) {
          _disableLoading();
          Get.toNamed("/information");
        } else {
          _showError("Email déjà utilisé");
        }
      } else {
        _showError("Vérification de Données");
      }
    }

    return ScaffoldPlatform(
      appBarIconColor: Colors.black,
      backgroundColor: Colors.white,
      drawer: Container(),
      leading: Container(),
      scaffoldState: _drawerKey,
      titleColor: Colors.black,
      appBarTitle: "WASSA WASSA",
      activeBackButton: false,
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: SC.width(.085)),
          children: [
            VerticalSeparator(height: .018),
            Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(),
                child: ImageLoader(image: "assets/limage3.png")),
            VerticalSeparator(height: .118),
            ProgressButton(
              stateWidgets: {
                ButtonState.idle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flag.fromCode(
                      FlagsCode.US,
                      height: 30,
                      width: 35,
                      fit: BoxFit.fill,
                    ),
                    Text("ANGLAIS",style:buttonStyle),
                  ],
                ),
                ButtonState.loading: Text(
                  "Loading",
                  style: buttonStyle,
                ),
                ButtonState.fail: Text(
                  "Fail",
                  style: buttonStyle,
                ),
                ButtonState.success: Text(
                  "Success",
                  style: buttonStyle,
                )
              },
              stateColors: {
                ButtonState.idle: Colors.black,
                ButtonState.loading: Colors.blue.shade300,
                ButtonState.fail: Colors.red.shade300,
                ButtonState.success: Colors.green.shade400,
              },
              onPressed: onPressedCustomButton,
              state: ButtonState.idle,
            ),
            VerticalSeparator(height: .035),
                        ProgressButton(
              stateWidgets: {
                ButtonState.idle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flag.fromCode(
                      FlagsCode.ML,
                      height: 30,
                      width: 35,
                      fit: BoxFit.fill,
                    ),
                    Text("ANGLAIS",style:buttonStyle),
                  ],
                ),
                ButtonState.loading: Text(
                  "Loading",
                  style: buttonStyle,
                ),
                ButtonState.fail: Text(
                  "Fail",
                  style: buttonStyle,
                ),
                ButtonState.success: Text(
                  "Success",
                  style: buttonStyle,
                )
              },
              stateColors: {
                ButtonState.idle: Colors.black,
                ButtonState.loading: Colors.blue.shade300,
                ButtonState.fail: Colors.red.shade300,
                ButtonState.success: Colors.green.shade400,
              },
              onPressed: onPressedCustomButton,
              state: ButtonState.idle,
            ),
            VerticalSeparator(height: .035),
                        ProgressButton(
              stateWidgets: {
                ButtonState.idle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flag.fromCode(
                      FlagsCode.BF,
                      height: 30,
                      width: 35,
                      fit: BoxFit.fill,
                    ),
                    Text("ANGLAIS",style:buttonStyle),
                  ],
                ),
                ButtonState.loading: Text(
                  "Loading",
                  style: buttonStyle,
                ),
                ButtonState.fail: Text(
                  "Fail",
                  style: buttonStyle,
                ),
                ButtonState.success: Text(
                  "Success",
                  style: buttonStyle,
                )
              },
              stateColors: {
                ButtonState.idle: Colors.black,
                ButtonState.loading: Colors.blue.shade300,
                ButtonState.fail: Colors.red.shade300,
                ButtonState.success: Colors.green.shade400,
              },
              onPressed: onPressedCustomButton,
              state: ButtonState.idle,
            ),
            VerticalSeparator(height: .035),
                        ProgressButton(
              stateWidgets: {
                ButtonState.idle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flag.fromCode(
                      FlagsCode.FR,
                      height: 30,
                      width: 35,
                      fit: BoxFit.fill,
                    ),
                    Text("ANGLAIS",style:buttonStyle),
                  ],
                ),
                ButtonState.loading: Text(
                  "Loading",
                  style: buttonStyle,
                ),
                ButtonState.fail: Text(
                  "Fail",
                  style: buttonStyle,
                ),
                ButtonState.success: Text(
                  "Success",
                  style: buttonStyle,
                )
              },
              stateColors: {
                ButtonState.idle: Colors.black,
                ButtonState.loading: Colors.blue.shade300,
                ButtonState.fail: Colors.red.shade300,
                ButtonState.success: Colors.green.shade400,
              },
              onPressed: onPressedCustomButton,
              state: ButtonState.idle,
            ),
            VerticalSeparator(height: .035),
          ],
        ),
      ),
    );
  }

  Future _selectDate(BuildContext context) async {
    DatePicker.showDatePicker(context, showTitleActions: true,
        onConfirm: (date) {
      email.text = date.toString().substring(0, 11);
    }, currentTime: DateTime.now(), locale: LocaleType.fr);
  }

  void onPressedCustomButton() {
    setState(() {
      switch (stateOnlyText) {
        case ButtonState.idle:
          stateOnlyText = ButtonState.loading;
          break;
        case ButtonState.loading:
          stateOnlyText = ButtonState.fail;
          break;
        case ButtonState.success:
          stateOnlyText = ButtonState.idle;
          break;
        case ButtonState.fail:
          stateOnlyText = ButtonState.success;
          break;
      }
    });
  }
}
