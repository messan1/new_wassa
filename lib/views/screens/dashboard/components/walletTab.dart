import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:new_wassa/constants/constString.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';
import 'package:new_wassa/views/components/materialInkWell.dart';
import 'package:new_wassa/views/components/walletMoneyViewer.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';

class WalletTab extends StatelessWidget {
  const WalletTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      shape: BoxShape.circle,
      alignment: Alignment.centerRight,
      border: Border(),
      height: 0.0,
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
      margin: EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 30.0.w),
      personalizeBorderRadius: BorderRadius.circular(2.0.h),
      boxShadow: [Styles.littleShadow],
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 9),
        child: MaterialInkWell(
          onPressed: () => Get.toNamed("/wallet"),
          radius: 2.0.h,
          customBorder: Border(),
          personalizeBorderRadius: BorderRadius.circular(0.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                ConstString.wallet,
                style: prixMessageStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 3,
              ),
              WalletMoneyViewer(
                color: Color(0xff1152FD), price: '99',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
