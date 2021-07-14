import 'package:flutter/material.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:new_wassa/views/components/materialInkWell.dart';
import 'package:new_wassa/views/styles/styles.dart';

import 'package:sizer/sizer.dart';

import 'extendedContainer.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton({
    Key? key,
    required this.color,
    required this.title,
    required this.onTap,
    required this.normalCase,
    required this.whiteMode,
  }) : super(key: key);
  final Color color;
  final String title;
  final Function onTap;
  final bool normalCase;
  final bool whiteMode;
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
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      minHeight: 0.0,
      useBorderRadius: true,
      width: 0.0,
      height: 7.0.h,
      color: color,
      personalizeBorderRadius: BorderRadius.circular(SC.radiusCalculate(8.5.h)),
      boxShadow: [Styles.backButtonShadow],
      child: MaterialInkWell(
        onPressed: onTap,
        radius: SC.radiusCalculate(8.5.h),
        customBorder:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        personalizeBorderRadius: BorderRadius.circular(0),
        child: Center(
            child: Text(
          normalCase == true ? title : title.toUpperCase(),
          style: whiteMode == true
              ? buttonStyle.copyWith(color: blackFont)
              : buttonStyle,
          textAlign: TextAlign.center,
        )),
      ),
    );
  }
}
