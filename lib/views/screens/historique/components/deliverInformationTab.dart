import 'package:flutter/material.dart';
import 'package:new_wassa/constants/constString.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';

class DeliverInformationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
                          shape: BoxShape.circle,
                    alignment: Alignment.centerRight,
             
                    linearGradient: LinearGradient(colors: [Colors.black]),
                    minHeight: 0.0,
                    useBorderRadius: true,
                  
                  
                    boxShadow: [Styles.backButtonShadow],
                 
                    margin: EdgeInsets.only(right: 6),
                    width: 24.0.w,
                    height: 12.0.h,
                    image: DecorationImage(
                        image: AssetImage("assets/profile.jpg"),
                        fit: BoxFit.fill),
      border: Border.all(color: greyFont),
      personalizeBorderRadius: BorderRadius.circular(3.5.h),
      color: whiteFont,
      padding: EdgeInsets.only(left: 8.0.w, right: 8.0.w, top: 3.5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _informationField(
              title: ConstString.deliverSince, contain: "16.06.2017", divider: false),
          _informationField(title: ConstString.typeVehicle, contain: "Van", divider: false),
          _informationField(title: ConstString.number, contain: "HS728K", divider: false),
          _informationField(
              title: ConstString.code, contain: "HS728K", divider: false),
        ],
      ),
    );
  }

  Widget _informationField(
      {required String title, required String contain,required bool divider}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 3.5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(TextSpan(
              text: title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: greyFont.withOpacity(.5)),
              children: [
                TextSpan(
                    text: "\n$contain",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: blackFont))
              ])),
          SizedBox(height: 4),
          divider == false
              ? Container()
              : Divider(
                  thickness: 1.35,
                ),
        ],
      ),
    );
  }
}
