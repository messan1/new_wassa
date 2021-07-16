import 'package:flutter/material.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';


Widget timeIndicator({required bool useVerticalMargin}) {
  return ExtendedContainer(
          shape: BoxShape.circle,
   
      border: Border(),
      height: 0.0,
      image: new DecorationImage(
        image: new ExactAssetImage('assets/taxi.png'),
        fit: BoxFit.cover,
      ),
      linearGradient: LinearGradient(colors: [Colors.black]),
 
      minHeight: 0.0,
    
      width: 0.0,
    

      personalizeBorderRadius: BorderRadius.circular(2.0.h),
      boxShadow: [Styles.littleShadow],
    color: blackFont,
    alignment: Alignment.center,
    padding: EdgeInsets.symmetric(vertical: .35.h, horizontal: 2.56.w),
    margin: EdgeInsets.only(top: useVerticalMargin == false ? 0 : 5.5.h),
    useBorderRadius: true,
    child: Center(
        child: Text(
      "30 min",
      style: Styles.ucolisGeneralBlackBoldFont
          .copyWith(color: whiteFont, fontSize: 9.0.sp),
    )),
  );
}
