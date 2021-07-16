import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';
import 'package:new_wassa/views/components/materialInkWell.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';

class DeliverCard extends StatelessWidget {
  const DeliverCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        ExtendedContainer(
          shape: BoxShape.circle,
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
          padding: EdgeInsets.all(2.5.h),
          alignment: Alignment.center,
          color: Colors.white,
          height: 16.0.h,
          personalizeBorderRadius: BorderRadius.circular(2.75.h),
          boxShadow: [Styles.backButtonShadow],
          child: MaterialInkWell(
            radius: 2.75.h,
            onPressed: () {
              Get.toNamed("/deliverInfo");
            },
            customBorder: Border(),
            personalizeBorderRadius: BorderRadius.circular(6.75.h),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 1.5.h),
              child: Row(
                children: [
                  ExtendedContainer(
                    shape: BoxShape.circle,
                    alignment: Alignment.centerRight,
                    border: Border(),
                    linearGradient: LinearGradient(colors: [Colors.black]),
                    minHeight: 0.0,
                    useBorderRadius: true,
                    padding: EdgeInsets.all(2.5.h),
                    color: Colors.white,
                    boxShadow: [Styles.backButtonShadow],
                    personalizeBorderRadius: BorderRadius.circular(6.75.h),
                    margin: EdgeInsets.only(right: 6),
                    width: 24.0.w,
                    height: 12.0.h,
                    image: DecorationImage(
                        image: AssetImage("assets/profile.jpg"),
                        fit: BoxFit.fill),
                    child: Container(),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                            text: "Lavigne",
                            style: nameDetailStyle,
                            children: [
                              TextSpan(
                                  text: "\nVolkswagen Jetta",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.0.sp))
                            ]),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 3.0.h,
                          ),
                          SizedBox(width: 5),
                          Text('4.8',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.0.sp))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          child: Icon(
            Icons.arrow_forward_ios,
            color: blackFont.withOpacity(.7),
            size: 2.0.h,
          ),
          right: 3.5.w,
          top: 0,
          bottom: 0,
        )
      ],
    );
  }
}
