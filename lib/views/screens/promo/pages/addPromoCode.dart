import 'package:flag/flag_enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_wassa/app/scaffoldPlatform.dart';
import 'package:new_wassa/constants/constPadMargin.dart';
import 'package:new_wassa/constants/constString.dart';
import 'package:new_wassa/views/components/simpleButton.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:progress_state_button/progress_button.dart';

GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class AddPromoCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPlatform(
        appBarIconColor: Colors.black,
        backgroundColor: Colors.white,
        drawer: Container(),
        leading: Container(),
        scaffoldState: _drawerKey,
        titleColor: Colors.black,
        appBarTitle: "Ajouter un code promo",
        activeBackButton: true,
        child: SafeArea(
          child: Padding(
            padding: ConstPadMargin.listViewPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Spacer(),
                TextField(
                  style: codePromoStyle,
                  textAlign: TextAlign.center,
                  onChanged: (value) {},
                ),
                Spacer(),
                ProgressButton(
                  stateWidgets: {
                    ButtonState.idle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("AJOUTER", style: buttonStyle),
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
                  onPressed: () => {},
                  state: ButtonState.idle,
                ),
                Spacer(),
              ],
            ),
          ),
        ));
  }
}
