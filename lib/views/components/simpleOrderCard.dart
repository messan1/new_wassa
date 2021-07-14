import 'package:flutter/material.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';

import 'extendedContainer.dart';

class SimpleOrderCard extends StatelessWidget {
  const SimpleOrderCard({
    Key? key,
    required this.endTime,
    required this.beginTime,
    required this.startingPoint,
    required this.deliveryPoint,
    required this.useShadowBox,
  }) : super(key: key);
  final String endTime;
  final String beginTime;
  final String startingPoint;
  final String deliveryPoint;
  final bool useShadowBox;
  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      height: 12.85.h,
      shape: BoxShape.circle,
      alignment: Alignment.centerRight,
      image: new DecorationImage(
        image: new ExactAssetImage('assets/taxi.png'),
        fit: BoxFit.cover,
      ),
      linearGradient: LinearGradient(colors: [Colors.black]),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      minHeight: 0.0,
      useBorderRadius: true,
      width: 0.0,
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 3.5.h),
      border: useShadowBox != false
          ? Border.fromBorderSide(BorderSide.none)
          : Border.all(color: blackFont.withOpacity(.15)),
      personalizeBorderRadius: BorderRadius.circular(2.75.h),
      boxShadow: useShadowBox != false ? [Styles.backButtonShadow] : [],
      child: Padding(
        padding: EdgeInsets.all(4.5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 5),
            Row(
              children: [
                ExtendedContainer(
                  height: 12.85.h,
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
                    Padding(
                      padding: EdgeInsets.zero,
                      child: Icon(
                        Icons.arrow_drop_down_sharp,
                        color: blackFont,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 1.5.w,
                ),
                Expanded(
                  child: ExtendedContainer(
                    height: 12.85.h,
                    color: blackFont,
                    width: 1.0.h,
                    shape: BoxShape.circle,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ExtendedContainer(
                          height: 1.0.h,
                          width: 1.0.h,
                          shape: BoxShape.circle,
                          boxShadow: [Styles.backButtonShadow],
                          alignment: Alignment.centerRight,
                          border: Border(),
                          image: new DecorationImage(
                            image: new ExactAssetImage('assets/taxi.png'),
                            fit: BoxFit.cover,
                          ),
                          linearGradient:
                              LinearGradient(colors: [Colors.black]),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          minHeight: 0.0,
                          personalizeBorderRadius: BorderRadius.circular(0),
                          useBorderRadius: true,
                          color: blackFont,
                          child: Text(
                            startingPoint,
                            style: Styles.ucolisGeneralBlackBoldFont,
                          ),
                        ),
                        ExtendedContainer(
                          color: blackFont,
                          height: 1.0.h,
                          width: 1.0.h,
                          shape: BoxShape.circle,
                          boxShadow: [Styles.backButtonShadow],
                          alignment: Alignment.centerRight,
                          border: Border(),
                          image: new DecorationImage(
                            image: new ExactAssetImage('assets/taxi.png'),
                            fit: BoxFit.cover,
                          ),
                          linearGradient:
                              LinearGradient(colors: [Colors.black]),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          minHeight: 0.0,
                          personalizeBorderRadius: BorderRadius.circular(0),
                          useBorderRadius: true,
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
    );
  }
}
