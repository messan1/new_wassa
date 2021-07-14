import 'package:flutter/material.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';

import 'extendedContainer.dart';
import 'materialInkWell.dart';

class CloseButtonU extends StatelessWidget {
  const CloseButtonU({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      shape: BoxShape.circle,
      color: Colors.white,
      boxShadow: [Styles.backButtonShadow],
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
      personalizeBorderRadius: BorderRadius.circular(0),
      useBorderRadius: true,
      width: 0.0,
  
      height: 0.0,
      child: MaterialInkWell(
        onPressed: onTap,
        customBorder: CircleBorder(),
        personalizeBorderRadius: BorderRadius.circular(0),
        radius: 0.0,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.close,
              color: blackFont,
              size: 2.5.h,
            ),
          ),
        ),
      ),
    );
  }
}
