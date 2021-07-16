import 'package:flutter/material.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';
import 'package:new_wassa/views/styles/styles.dart';

import 'package:sizer/sizer.dart';

class NoteCardForDeliver extends StatelessWidget {
  const NoteCardForDeliver({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      shape: BoxShape.circle,
  
     
      linearGradient: LinearGradient(colors: [Colors.black]),
      minHeight: 0.0,
      useBorderRadius: true,
      padding: EdgeInsets.all(2.5.h),
 
      boxShadow: [Styles.backButtonShadow],
    
   
      width: 24.0.w,
  
      image: DecorationImage(
          image: AssetImage("assets/profile.jpg"), fit: BoxFit.fill),
      alignment: Alignment.center,
      height: 11.0.h,
      margin: EdgeInsets.symmetric(horizontal: 1.5.w),
      border: Border.all(color: greyFont),
      personalizeBorderRadius:
          BorderRadius.circular(SC.radiusCalculate(12.0.h)),
      color: whiteFont,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ExtendedContainer(
           
          
            border: Border(),
            linearGradient: LinearGradient(colors: [Colors.black]),
            minHeight: 0.0,
            useBorderRadius: true,
            padding: EdgeInsets.all(2.5.h),
       
            boxShadow: [Styles.backButtonShadow],
            personalizeBorderRadius: BorderRadius.circular(6.75.h),
            margin: EdgeInsets.only(right: 6),
       
            height: 12.0.h,
            image: DecorationImage(
                image: AssetImage("assets/profile.jpg"), fit: BoxFit.fill),
            alignment: Alignment.center,
            shape: BoxShape.circle,
            color: greyFont.withOpacity(.65),
            width: 5.0.h,
           
            child: Center(
              child: Icon(
                icon,
                color: whiteFont,
                size: 2.25.h,
              ),
            ),
          ),
          Text(title)
        ],
      ),
    );
  }
}
