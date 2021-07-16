import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';
class DashBoardSlide extends StatelessWidget {
  const DashBoardSlide({
    Key? key, required this.image, required this.text,
  }) : super(key: key);
  final Widget image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        image,
        ExtendedContainer(
                shape: BoxShape.circle,
      alignment: Alignment.centerRight,
      border: Border(),
  
      image: new DecorationImage(
        image: new ExactAssetImage('assets/taxi.png'),
        fit: BoxFit.cover,
      ),
      linearGradient: LinearGradient(colors: [Colors.black]),

      minHeight: 0.0,
   
      width: 0.0,
   
    
          height: 70..h,
          personalizeBorderRadius: BorderRadius.circular(15..h),
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: SC.width(.02), vertical: SC.height(.015)),
          padding: EdgeInsets.all(5..h),
          useBorderRadius: true,
          boxShadow: [Styles.littleShadow],
          child: Center(child: Text(text, textAlign: TextAlign.center, style: messageHomeStyle.copyWith(fontWeight: FontWeight.bold, shadows: [
            Styles.littleShadow
          ]),)),
        ),
      ],
    );
  }
}
