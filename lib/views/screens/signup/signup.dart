import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:new_wassa/app/scaffoldPlatform.dart';
import 'package:new_wassa/views/components/simpleButton.dart';
import 'package:new_wassa/views/components/verticalSeparator.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class _SignUpState extends State<SignUp> {
  String? phone;
  @override
  void initState() {
    // final _userBloc = Provider.of<UserBloc>(context, listen: false);

    super.initState();
  }

  @override
  void dispose() {
    //final _userBloc = UserBloc();
    //_userBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _orientation = MediaQuery.of(context).orientation;
    //final _userBloc = Provider.of<UserBloc>(context);
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final TextEditingController controller = TextEditingController();
    String initialCountry = 'CI';
    PhoneNumber number = PhoneNumber(isoCode: 'CI');
    String phoneNumber = "";

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

    return ScaffoldPlatform(
      activeBackButton: true,
      appBarIconColor: Colors.black,
      backgroundColor: Colors.white,
      drawer: Container(),
      leading: Container(),
      scaffoldState: _drawerKey,
      titleColor: Colors.black,
      appBarTitle: "Entrez votre numéro",
      child: ListView(
        children: [
          Text(
            "Etape 1/4",
            textAlign: TextAlign.center,
            style: headerStyle,
          ),
          SizedBox(
            height: _orientation == Orientation.portrait
                ? _size.height * .375
                : _size.width * .375,
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {},
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: TextStyle(color: Colors.black),
                    initialValue: number,
                    textFieldController: controller,
                    formatInput: false,
                    keyboardType: TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    inputBorder: OutlineInputBorder(),
                    onSaved: (PhoneNumber number) {
                      setState(() {
                        number = number;
                      });
                    },
                  ),
                ),
              ],
            )),
          ),
          VerticalSeparator(height: .065), //Connexion

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SimpleButton(
              title: 'Inscription',
              onTap: () async {
                _showLoading();
                //String phone =
                //  Provider.of<UserAuth>(context, listen: false).phoneNumber;

                //Get.toNamed("/verification");
              },
              color: Colors.red,
              normalCase: true,
              whiteMode: true,
            ),
          ), //Inscription
        ],
      ),
    );
  }
}
