import 'package:flutter/material.dart';
import 'package:new_wassa/constants/constString.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';

class PromoCard extends StatelessWidget {
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
      minHeight: 0.0,
      useBorderRadius: true,
      width: 0.0,
      height: 14.95.h,
      color: Colors.white,
      personalizeBorderRadius: BorderRadius.circular(3.15.h),
      margin: EdgeInsets.only(bottom: 2.5.h),
      boxShadow: [Styles.backButtonShadow],
      padding: EdgeInsets.all(3.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(TextSpan(
              text: "30 % de Réduction",
              style: TextStyle(fontWeight: FontWeight.bold, color: blackFont),
              children: [
                TextSpan(
                    text: "\n" + ConstString.boilPromoMgs,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: blackFont,
                        fontSize: 10.0.sp))
              ])),
          SizedBox(
            height: 5.5.h,
          ),
          Stack(
            overflow: Overflow.visible,
            children: [
              _buildCircleCard,
              Positioned(
                child: _buildCircleCard,
                right: -4.5.w,
              ),
              Positioned(
                child: _buildCircleCard,
                right: -9.0.w,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget get _buildCircleCard {
    return ExtendedContainer(
          
      alignment: Alignment.centerRight,
   
      image: new DecorationImage(
        image: new ExactAssetImage('assets/taxi.png'),
        fit: BoxFit.cover,
      ),
      linearGradient: LinearGradient(colors: [Colors.black]),
      minHeight: 0.0,
      useBorderRadius: true,
 
 

      personalizeBorderRadius: BorderRadius.circular(3.15.h),
      margin: EdgeInsets.only(bottom: 2.5.h),
      boxShadow: [Styles.backButtonShadow],
      padding: EdgeInsets.all(3.0.h),
      color: greyFont,
      border: Border.all(color: Colors.grey.shade500.withOpacity(.6)),
      height: 4.5.h,
      width: 4.5.h,
      shape: BoxShape.circle, child: Container(),
    );
  }
}
