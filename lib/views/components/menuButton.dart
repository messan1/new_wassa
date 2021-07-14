import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:new_wassa/views/styles/styles.dart';

import 'package:sizer/sizer.dart';

import 'extendedContainer.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      margin: EdgeInsets.all(8..h),
      padding: EdgeInsets.all(5..h),
      color: Colors.white,
      shape: BoxShape.circle,
      boxShadow: [Styles.backButtonShadow],
      alignment: Alignment.centerRight,
      border: Border(),
      image: new DecorationImage(
        image: new ExactAssetImage('assets/taxi.png'),
        fit: BoxFit.cover,
      ),
      linearGradient: LinearGradient(colors: [Colors.black]),
      minHeight: 0.0,
      personalizeBorderRadius: BorderRadius.circular(0),
      useBorderRadius: true,
      width: 0.0,
      height: 0.0,
      child: Material(
        shape: CircleBorder(),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(SC.width()),
          onTap:()=> onPressed,
          child: Icon(
            GetPlatform.isIOS ? CupertinoIcons.bars : Icons.menu_rounded,
            color: blackFont,
            size: 20..h,
          ),
        ),
      ),
    );
  }
}
