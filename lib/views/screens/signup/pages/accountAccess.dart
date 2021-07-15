import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/route_manager.dart';
import 'package:new_wassa/app/scaffoldPlatform.dart';
import 'package:new_wassa/utils/Assistance/AuthAssistanceMethods.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:new_wassa/views/components/platformTextFieldForm%20copy.dart';
import 'package:new_wassa/views/components/simpleButton.dart';
import 'package:new_wassa/views/components/verticalSeparator.dart';
import 'package:new_wassa/views/styles/styles.dart';

import 'package:provider/provider.dart';

GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class AccountAccess extends StatefulWidget {
  @override
  _AccountAccessState createState() => _AccountAccessState();
}

class _AccountAccessState extends State<AccountAccess> {
  String? accountType;
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
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
      appBarTitle: "Accès au compte",
      activeBackButton: false,
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: SC.width(.085)),
          children: [
            Text(
              "Etape 3/4",
              textAlign: TextAlign.center,
              style: headerStyle,
            ),
            SizedBox(height: SC.height(.03)),
            SizedBox(
              height: _orientation == Orientation.portrait
                  ? _size.height * .2
                  : _size.width * .2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                // child: Center(child: ImageLoader(image: "assets/image2.png")),
              ),
            ),
            PlatformTextFieldForm.textFieldPlatform(
                title: "Email",
                controller: email,
                enabled: false,
                isPassword: false,
                suffix: Container(),
                verticalContentPadding: 0),
            VerticalSeparator(height: .018),
            PlatformTextFieldForm.textFieldPlatform(
                enabled: false,
                suffix: Container(),
                title: 'Mot de passe',
                isPassword: true,
                controller: password,
                verticalContentPadding: 0),
            VerticalSeparator(height: .018),
            PlatformTextFieldForm.textFieldPlatform(
                enabled: false,
                suffix: Container(),
                title: 'Confirmation du mot de pass',
                isPassword: true,
                controller: confirmpassword,
                verticalContentPadding: 0),
            VerticalSeparator(height: .018),
            VerticalSeparator(height: .035),
          ],
        ),
      ),
    );
  }
}
