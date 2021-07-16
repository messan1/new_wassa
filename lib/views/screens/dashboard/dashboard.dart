import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:new_wassa/app/scaffoldPlatform.dart';
import 'package:new_wassa/constants/constString.dart';
import 'package:new_wassa/views/components/menuButton.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';

import 'components/dashOptionTab.dart';
import 'components/dashSlider.dart';
import 'components/ucolisDrawer.dart';
import 'components/walletTab.dart';

GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class Dashboard extends StatelessWidget {
  final storage = new FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return ScaffoldPlatform(
        activeBackButton: false,
        appBarIconColor: Colors.black,
        backgroundColor: Colors.white,
        drawer: UcolisDrawer(
          profilrPicture: '',
        ),
        scaffoldState: _drawerKey,
        leading: MenuButton(
          onPressed: () => _drawerKey.currentState!.openDrawer(),
        ),
        appBarTitle: ConstString.ucolis,
        titleColor: whiteFont,
        child: Stack(
          children: [
            Positioned.fill(
                child: ExtendedImage.asset(
              "assets/images/background.png",
              fit: BoxFit.fill,
            )),
            DashSlider(),
            Positioned(
              bottom: 36.0.h,
              right: 0,
              child: Image.asset(
                "assets/images/image1.png",
                fit: BoxFit.fill,
                scale: 1.08,
              ),
            ),
            Positioned(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    WalletTab(),
                    DashOptionTab(),
                  ]),
              bottom: 0,
              left: 0,
              right: 0,
            ),
          ],
        ));
  }
}
