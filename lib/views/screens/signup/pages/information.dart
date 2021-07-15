import 'dart:io';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/route_manager.dart';

import 'package:http/http.dart' as http;
import 'package:new_wassa/DataHandler/GlobalFunction.dart';
import 'package:new_wassa/DataHandler/userAuth.dart';
import 'package:new_wassa/app/scaffoldPlatform.dart';
import 'package:new_wassa/utils/Assistance/AuthAssistanceMethods.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:new_wassa/views/components/imageLoader.dart';
import 'package:new_wassa/views/components/platformTextFieldForm%20copy.dart';
import 'package:new_wassa/views/components/simpleButton.dart';
import 'package:new_wassa/views/components/verticalSeparator.dart';
import 'package:new_wassa/views/styles/styles.dart';

import 'package:provider/provider.dart';

import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class Information extends StatefulWidget {
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  TextEditingController _dateController = TextEditingController();
  late DateTime bithdate ;
  TextEditingController _firstnameController = new TextEditingController();
  TextEditingController _lastnameController = new TextEditingController();
  late File image;

  Future _selectDate(BuildContext context) async {
    DatePicker.showDatePicker(context, showTitleActions: true,
        onConfirm: (date) {
      _dateController.text = date.toString().substring(0, 11);
    }, currentTime: DateTime.now(), locale: LocaleType.fr);
    print(bithdate.toString());
  }

  @override
  void dispose() {
    _dateController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    String firstname = "";
    String lastname = "";
    String bith = "";
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
    
   

      super.initState();
    }

    _Save() async {
      _showLoading();
      if (_firstnameController.text.isNotEmpty &&
          _lastnameController.text.isNotEmpty &&
          _dateController.text.isNotEmpty) {
        Provider.of<UserAuth>(context, listen: false).updateUsername(
            _lastnameController.text,
            _firstnameController.text,
            _dateController.text);
        var response = await AuthAssistanceMethods.signupUser(context);
        if (response != null) {
          _disableLoading();
          Get.toNamed("/adddocs");
        }
      } else {
        _disableLoading();

        _showError(
            "Vérifiez que vous avez ajoutez des informations vous concernant");
      }
    }

    return ScaffoldPlatform(
            appBarIconColor: Colors.black,
      backgroundColor: Colors.white,
      drawer: Container(),
      leading: Container(),
      scaffoldState: _drawerKey,
      titleColor: Colors.black,
    
      appBarTitle: "Informations personnelles",
      activeBackButton: false,
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: SC.width(.085)),
          children: [
            Text(
              "Etape 4/4",
              textAlign: TextAlign.center,
              style: headerStyle,
            ),
            SizedBox(
              height: _size.height * .3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                    child: Stack(
                  children: [
                    if (image == null) ImageLoader(image: "assets/photoUser.png") else ExtendedImage.file(image),
                    Positioned(
                      child: Material(
                        shape: StadiumBorder(),
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(_size.height),
                          onTap: () async {
                            var imagepicker =
                                await GlobalFunction.imageGetter(context);
                            setState(() {
                              image = imagepicker;
                            });
                            _showLoading();
                            var res = await AuthAssistanceMethods.uploadImage(
                                image.path,
                                Provider.of<UserAuth>(context, listen: false)
                                    .email
                                    .toString());
                            if (res == null) {
                              _disableLoading();
                            }
                          },
                          child: Icon(
                            Icons.add_a_photo_outlined,
                            color: greyFont,
                            size: 30,
                          ),
                        ),
                      ),
                      bottom: 0,
                      top: 0,
                      left: 0,
                      right: 0,
                    ),
                  ],
                )),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PlatformTextFieldForm.textFieldPlatform(
                   enabled: false,
                    isPassword: false,
                    suffix: Container(),

                    title: 'Nom',
                    verticalContentPadding: SC.height(.0175),
                    controller: _firstnameController),
                VerticalSeparator(
                  height: 0.3,
                ),
                PlatformTextFieldForm.textFieldPlatform(
                    enabled: false,
                    isPassword: false,
                    suffix: Container(),
                    title: 'Prénom(s)',
                    verticalContentPadding: SC.height(.0175),
                    controller: _lastnameController),
                VerticalSeparator(
                  height: 0.3,
                ),
                GestureDetector(
                  child: PlatformTextFieldForm.textFieldPlatform(
                    isPassword: false,
                  
                      controller: _dateController,
                      enabled: false,
                      title: 'Date de naissance',
                      verticalContentPadding: 20,
                      suffix: IconButton(
                        icon: Icon(
                          Platform.isIOS
                              ? CupertinoIcons.calendar
                              : Icons.calendar_today_rounded,
                          color: blackFont,
                        ),
                        onPressed: () async {
                          await _selectDate(context);
                        },
                      )),
                  onTap: () async {
                    await _selectDate(context);
                  },
                )
              ],
            ),
            VerticalSeparator(
              height: 0.3,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SimpleButton(
                  title: "enregistrer",
                  onTap: () {
                    _Save();

                    //
                  },
                  color: Colors.black,
                  normalCase: true,
                  whiteMode: true,
                ),
                VerticalSeparator(height: .014),
              ],
            )
          ],
        ),
      ),
    );
  }
}
