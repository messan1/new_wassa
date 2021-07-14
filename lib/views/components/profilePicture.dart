import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';

import 'extendedContainer.dart';
import 'materialInkWell.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
    required this.profilePicture,
    required this.imagePath,
    required this.radius,
    required this.withEditButton,
  }) : super(key: key);

  final String profilePicture;
  final String imagePath;
  final double radius;
  final withEditButton;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: radius,
          backgroundImage:  AssetImage("assets/profile.jpg"),
         
          child:  Icon(
                  Icons.person,
                  color: Colors.transparent,
                )
             
        ),
        withEditButton == false
            ? Container()
            : Positioned(
                right: -1.0.w,
                top: -.085.h,
                child: ExtendedContainer(
                  height: 3.5.h,
                  width: 3.5.h,
                  color: greyFont,
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
                  child: MaterialInkWell(
                      onPressed: () {
                        Get.toNamed("/profile");
                      },
                      customBorder: CircleBorder(),
                      personalizeBorderRadius: BorderRadius.circular(0),
                      radius: 0.0,
                      child: Icon(
                        Icons.edit_outlined,
                        size: 2.3.h,
                      )),
                ),
              )
      ],
    );
  }
}
