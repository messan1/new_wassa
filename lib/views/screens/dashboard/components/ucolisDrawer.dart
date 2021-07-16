import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:new_wassa/constants/constString.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';
import 'package:new_wassa/views/components/profilePicture.dart';
import 'package:new_wassa/views/styles/styles.dart';

import 'package:sizer/sizer.dart';

class UcolisDrawer extends StatelessWidget {
  final String profilrPicture;

  const UcolisDrawer({Key? key, required this.profilrPicture}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String imagePath = 'assets/profile.jpg';
    return Drawer(
      child: Stack(
        children: [
          ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                color: blackFont,
                padding: EdgeInsets.only(left: 8.0.w, top: 10.0.h),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: blackFont),
                  accountName: Text(
                    'LaVigne'.toUpperCase(),
                    style: nameMenuStyle,
                  ),
                  accountEmail: Text(
                    'lavigne10@outlook.com',
                    style: mailMenuStyle,
                  ),
                  currentAccountPicture: Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/profile");
                        },
                        child: ProfilePicture(
                          profilePicture: profilrPicture,
                          imagePath: imagePath,
                          radius: 60.0.h, withEditButton: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              _drawerButton(
                  onTap: () => Get.toNamed("/historic"),
                  title: ConstString.drawBHistory, length: 0),
              _drawerButton(
                  onTap: () => Get.toNamed("/wallet"),
                  title: ConstString.wallet, length: 0),
              _drawerButton(
                  onTap: () => Get.toNamed("/promo"),
                  title: ConstString.drawBCode,
                  length: 2),
              _drawerButton(
                onTap: () => Get.toNamed("/support"),
                title: ConstString.drawBSupport, length: 0,
              ),
              _drawerButton(
                onTap: () => Get.toNamed("/mapFromDeliver"),
                title: "Test Deliver", length: 0,
              ),
            ],
          ),
          Positioned(
            child: GestureDetector(
              onTap: () {},
              child: ExtendedContainer(
                      shape: BoxShape.circle,
      alignment: Alignment.centerRight,
      border: Border(),
      height: 0.0,
      image: new DecorationImage(
        image: new ExactAssetImage('assets/taxi.png'),
        fit: BoxFit.cover,
      ),
      linearGradient: LinearGradient(colors: [Colors.black]),
  
      minHeight: 0.0,
      useBorderRadius: true,
 
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 30.0.w),
      personalizeBorderRadius: BorderRadius.circular(2.0.h),
      boxShadow: [Styles.littleShadow],
                padding: EdgeInsets.only(left: 13.0.w, bottom: 15, top: 15),
                width: SC.width(),
                child: Text(
                  ConstString.drawBLogout,
                  style: linkStyle,
                ),
              ),
            ),
            bottom: 3.0.h,
          ),
        ],
      ),
    );
  }
}

Widget _drawerButton({required Function onTap, required String title, required int length}) {
  return InkWell(
    onTap:()=> onTap,
    child: ListTile(
      title: Padding(
        padding: EdgeInsets.only(left: 8.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: componentMenuStyle,
            ),
          ],
        ),
      ),
      trailing: length != null
          ? ExtendedContainer(
                
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
  
   
      margin: EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 30.0.w),
      personalizeBorderRadius: BorderRadius.circular(2.0.h),
   
              boxShadow: [Styles.littleShadow],
              color: Colors.white,
              shape: BoxShape.circle,
              height: 5.0.h,
              width: 5.0.h,
              child: Center(
                  child: Text(
                length.toString(),
                style: componentMenuStyle,
              )),
            )
          : Container(
              height: 0,
              width: 0,
            ),
    ),
  );
}
