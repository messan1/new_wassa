import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:new_wassa/constants/constString.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';

import 'package:new_wassa/views/styles/styles.dart';

import 'package:sizer/sizer.dart';

class DashOptionTab extends StatelessWidget {
  const DashOptionTab({
    Key? key,
  }) : super(key: key);
  static get _motor => "motor";
  static get _cars => "cars";
  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      shape: BoxShape.circle,
      alignment: Alignment.centerRight,
      border: Border(),
      image: new DecorationImage(
        image: new ExactAssetImage('assets/taxi.png'),
        fit: BoxFit.cover,
      ),
      linearGradient: LinearGradient(colors: [Colors.black]),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      minHeight: 0.0,
      useBorderRadius: true,
      width: 0.0,
      margin: EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 30.0.w),
      boxShadow: [Styles.littleShadow],
      color: whiteFont,
      height: 36.0.h,
      personalizeBorderRadius:
          BorderRadius.vertical(top: Radius.circular(30..h)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ExtendedContainer(
            shape: BoxShape.circle,
            alignment: Alignment.centerRight,
            border: Border(),
            image: new DecorationImage(
              image: new ExactAssetImage('assets/taxi.png'),
              fit: BoxFit.cover,
            ),
            linearGradient: LinearGradient(colors: [Colors.black]),
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            minHeight: 0.0,
            margin: EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 30.0.w),
            personalizeBorderRadius: BorderRadius.circular(2.0.h),
            boxShadow: [Styles.littleShadow],
            height: 5..h,
            width: 30..w,
            useBorderRadius: true,
            color: Colors.blueGrey.withOpacity(.35),
            child: Container(),
          ),
          Row(
            children: [

            ],
          ),
       //   TalkButton()
        ],
      ),
    );
  }
}
