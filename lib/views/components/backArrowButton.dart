import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';

import 'extendedContainer.dart';
import 'materialInkWell.dart';

class BackArrowButton extends StatelessWidget {
  const BackArrowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ExtendedContainer(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [Styles.backButtonShadow],
        alignment: Alignment.centerRight,
        border: Border(),
        height: 0.0,
        image: new DecorationImage(
            image: new ExactAssetImage('assets/taxi.png'),
            fit: BoxFit.cover,
          ),
        linearGradient: LinearGradient(colors: [Colors.black]),
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        minHeight: 0.0,
        personalizeBorderRadius: BorderRadius.circular(10),
        useBorderRadius: true,
        width: 0.0,
        child: MaterialInkWell(
          customBorder: CircleBorder(),
          onPressed: () {
            Get.back();
          },
          personalizeBorderRadius: BorderRadius.circular(10),
          radius: 0.0,
          child: Center(
            child: Icon(
              GetPlatform.isIOS ?  CupertinoIcons.arrow_left: Icons.arrow_back_ios_rounded,
              color: blackFont,
              size: 2.0.h,
            ),
          ),
        ),
      ),
    );
  }
}
