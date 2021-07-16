import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';

class AddAddressCard extends StatelessWidget {
  const AddAddressCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _dropOffController = new TextEditingController();
    TextEditingController _positionController = new TextEditingController();
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
      margin: EdgeInsets.only(top: 2.5.h, bottom: 1.25.h),
      personalizeBorderRadius: BorderRadius.circular(2.5.h),
      height: 14.95.h,
      padding: EdgeInsets.all(2.5.h),
      color: Colors.white,
      boxShadow: [Styles.backButtonShadow],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.35.w),
            child: Column(
              children: [
                ExtendedContainer(
                  alignment: Alignment.centerRight,
                  border: Border(),
                  image: new DecorationImage(
                    image: new ExactAssetImage('assets/taxi.png'),
                    fit: BoxFit.cover,
                  ),
                  linearGradient: LinearGradient(colors: [Colors.black]),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  minHeight: 0.0,
                  useBorderRadius: true,
                  margin:
                      EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 30.0.w),
                  personalizeBorderRadius: BorderRadius.circular(2.0.h),
                  boxShadow: [Styles.littleShadow],
                  color: blueFont,
                  height: 1.0.h,
                  width: 1.0.h,
                  shape: BoxShape.circle,
                  child: Container(),
                ),
                ExtendedContainer(
                  shape: BoxShape.circle,
                  alignment: Alignment.centerRight,
                  border: Border(),
                  image: new DecorationImage(
                    image: new ExactAssetImage('assets/taxi.png'),
                    fit: BoxFit.cover,
                  ),
                  linearGradient: LinearGradient(colors: [Colors.black]),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  minHeight: 0.0,
                  useBorderRadius: true,
                  margin:
                      EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 30.0.w),
                  personalizeBorderRadius: BorderRadius.circular(2.0.h),
                  boxShadow: [Styles.littleShadow],
                  height: 8.0.h,
                  width: .5.w,
                  color: blackFont,
                  child: Container(),
                ),
                Flexible(
                  child: Icon(
                    Icons.arrow_drop_down_sharp,
                    color: blackFont,
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Votre Position",
                style: Styles.ucolisGeneralBlackBoldFont,
              ),
              Expanded(
                  child: Divider(
                thickness: 1.35,
              )),
              Text(
                "Destination",
                style: Styles.ucolisGeneralBlackBoldFont,
              ),
            ],
          )
        ],
      ),
    );
  }
}
