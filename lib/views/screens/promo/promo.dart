import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:new_wassa/app/scaffoldPlatform.dart';
import 'package:new_wassa/constants/constPadMargin.dart';
import 'package:new_wassa/constants/constString.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';
import 'package:new_wassa/views/components/simpleButton.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';

import 'components/promoCard.dart';

GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPlatform(
      backgroundColor: Colors.white,
      drawer: Container(),
      leading: Container(),
      scaffoldState: _drawerKey,
      titleColor: Colors.black,
      activeBackButton: true,
      appBarIconColor: Colors.black,
      appBarTitle: "Promo",
      child: SafeArea(
          child: Stack(
        children: [
          ListView(
            padding: ConstPadMargin.listViewPadding,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 3.5.h,
                  ),
                  PromoCard(),
                  PromoCard(),
                ],
              ),
              SizedBox(height: 13.95.h)
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ExtendedContainer(
              shape: BoxShape.circle,
              border: Border(),
              image: new DecorationImage(
                image: new ExactAssetImage('assets/taxi.png'),
                fit: BoxFit.cover,
              ),
              linearGradient: LinearGradient(colors: [Colors.black]),
              minHeight: 0.0,
              useBorderRadius: true,
              width: 0.0,
              personalizeBorderRadius: BorderRadius.circular(3.15.h),
              margin: EdgeInsets.only(bottom: 2.5.h),
              boxShadow: [Styles.backButtonShadow],
              padding: ConstPadMargin.listViewPadding,
              alignment: Alignment.center,
              color: whiteFont,
              height: 12.95.h,
              child: SimpleButton(
                title: ConstString.addProCode,
                normalCase: true,
                onTap: () {
                  Get.toNamed("/addPromoCode");
                },
                color: Colors.black,
                whiteMode: true,
              ),
            ),
          )
        ],
      )),
    );
  }
}
