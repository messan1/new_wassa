import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';
import 'package:new_wassa/views/components/materialInkWell.dart';
import 'package:new_wassa/views/styles/styles.dart';

import 'package:sizer/sizer.dart';

class OrderCardWithStatus extends StatelessWidget {
  const OrderCardWithStatus({
    Key? key,
    required this.date,
    required this.status,
    required this.beginTime,
    required this.endTime,
    required this.startingPoint,
    required this.deliveryPoint,
  }) : super(key: key);
  final String date;
  final bool status;
  final String beginTime;
  final String endTime;
  final String startingPoint;
  final String deliveryPoint;

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      border: Border(),
      linearGradient: LinearGradient(colors: [Colors.black]),
      minHeight: 30.0,
      useBorderRadius: true,
      padding: EdgeInsets.all(2.5.h),
      height: 12.0.h,
      image: DecorationImage(
          image: AssetImage("assets/profile.jpg"), fit: BoxFit.fill),
      alignment: Alignment.center,
      shape: BoxShape.circle,
      width: 5.0.h,
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 3.5.h),
      personalizeBorderRadius: BorderRadius.circular(2.75.h),
      boxShadow: [Styles.backButtonShadow],
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: EdgeInsets.all(4.5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(date),
                  Text(
                    status == true
                        ? "Terminé".toUpperCase()
                        : "Annulé".toUpperCase(),
                    style: status == true ? endStatusStyle : cancelStatusStyle,
                  )
                ],
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  ExtendedContainer(
                    border: Border(),
                    linearGradient: LinearGradient(colors: [Colors.black]),
                    minHeight: 30.0,
                    useBorderRadius: true,
                    padding: EdgeInsets.all(2.5.h),
                    image: DecorationImage(
                        image: AssetImage("assets/profile.jpg"),
                        fit: BoxFit.fill),
                    alignment: Alignment.center,
                    shape: BoxShape.circle,
                    width: 5.0.h,
                    color: Colors.white,
                    margin: EdgeInsets.only(bottom: 3.5.h),
                    personalizeBorderRadius: BorderRadius.circular(2.75.h),
                    boxShadow: [Styles.backButtonShadow],
                    height: 12.85.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(beginTime),
                        Text(endTime),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 1.5.w,
                  ),
                  Column(
                    children: [
                      ExtendedContainer(
                        border: Border(),
                        linearGradient: LinearGradient(colors: [Colors.black]),
                        minHeight: 0.0,
                        useBorderRadius: true,
                        padding: EdgeInsets.all(2.5.h),
                        image: DecorationImage(
                            image: AssetImage("assets/profile.jpg"),
                            fit: BoxFit.fill),
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(bottom: 3.5.h),
                        personalizeBorderRadius: BorderRadius.circular(2.75.h),
                        boxShadow: [Styles.backButtonShadow],
                        color: blackFont,
                        height: 1.0.h,
                        width: 1.0.h,
                        shape: BoxShape.circle,
                        child: Container(),
                      ),
                      ExtendedContainer(
                        border: Border(),
                        linearGradient: LinearGradient(colors: [Colors.black]),
                        minHeight: 0.0,
                        useBorderRadius: true,
                        padding: EdgeInsets.all(2.5.h),
                        image: DecorationImage(
                            image: AssetImage("assets/profile.jpg"),
                            fit: BoxFit.fill),
                        alignment: Alignment.center,
                        shape: BoxShape.circle,
                        margin: EdgeInsets.only(bottom: 3.5.h),
                        personalizeBorderRadius: BorderRadius.circular(2.75.h),
                        boxShadow: [Styles.backButtonShadow],
                        height: 10.5.h,
                        width: .5.w,
                        color: blackFont,
                        child: Container(),
                      ),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: blackFont,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 1.5.w,
                  ),
                  Expanded(
                    child: ExtendedContainer(
                      border: Border(),
                      linearGradient: LinearGradient(colors: [Colors.black]),
                      minHeight: 0.0,
                      useBorderRadius: true,
                      padding: EdgeInsets.all(2.5.h),
                      image: DecorationImage(
                          image: AssetImage("assets/profile.jpg"),
                          fit: BoxFit.fill),
                      alignment: Alignment.center,
                      shape: BoxShape.circle,
                      width: 5.0.h,
                      color: Colors.white,
                      margin: EdgeInsets.only(bottom: 3.5.h),
                      personalizeBorderRadius: BorderRadius.circular(2.75.h),
                      boxShadow: [Styles.backButtonShadow],
                      height: 13.0.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ExtendedContainer(
                            border: Border(),
                            linearGradient:
                                LinearGradient(colors: [Colors.black]),
                            minHeight: 0.0,
                            useBorderRadius: true,
                            padding: EdgeInsets.all(2.5.h),
                            height: 12.0.h,
                            image: DecorationImage(
                                image: AssetImage("assets/profile.jpg"),
                                fit: BoxFit.fill),
                            alignment: Alignment.center,
                            shape: BoxShape.circle,
                            width: 5.0.h,
                            color: Colors.white,
                            margin: EdgeInsets.only(bottom: 3.5.h),
                            personalizeBorderRadius:
                                BorderRadius.circular(2.75.h),
                            boxShadow: [Styles.backButtonShadow],
                            child: Text(
                              startingPoint,
                              style: Styles.ucolisGeneralBlackBoldFont,
                            ),
                          ),
                          ExtendedContainer(
                            border: Border(),
                            linearGradient:
                                LinearGradient(colors: [Colors.black]),
                            minHeight: 0.0,
                            useBorderRadius: true,
                            padding: EdgeInsets.all(2.5.h),
                            height: 12.0.h,
                            image: DecorationImage(
                                image: AssetImage("assets/profile.jpg"),
                                fit: BoxFit.fill),
                            alignment: Alignment.center,
                            shape: BoxShape.circle,
                            width: 5.0.h,
                            color: Colors.white,
                            margin: EdgeInsets.only(bottom: 3.5.h),
                            personalizeBorderRadius:
                                BorderRadius.circular(2.75.h),
                            boxShadow: [Styles.backButtonShadow],
                            child: Text(
                              deliveryPoint,
                              style: Styles.ucolisGeneralBlackBoldFont,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.5.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
