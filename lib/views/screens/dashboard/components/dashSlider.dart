import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:new_wassa/constants/constString.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:sizer/sizer.dart';

import 'dashBoardSlide.dart';

class DashSlider extends StatelessWidget {
  const DashSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: SC.height(),
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 1,
                aspectRatio: 2.0,
                initialPage: 0,
              ),
              items: [
                DashBoardSlide(
                  text: ConstString.welcomeOnDash,
                  image: Positioned(top: 60..h, right: -0, child: Container()),
                ),
                DashBoardSlide(
                  text: ConstString.shippingTextOnDash,
                  image: Positioned(
                    left: 0,
                    child: Container(),
                  ),
                ),
                DashBoardSlide(
                  text: ConstString.shippingTextOnDash2,
                  image: Positioned(
                    top: -10,
                    right: 0,
                    child: Container(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
