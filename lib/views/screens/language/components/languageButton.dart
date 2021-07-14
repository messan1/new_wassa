import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    Key? key,
    required this.language,
    required this.countryCode,
  }) : super(key: key);
  final String language;
  final String countryCode;
  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
    
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
   
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      minHeight: 0.0,
      personalizeBorderRadius: BorderRadius.circular(0),
    
     
      height: .087,
      useBorderRadius: true,
      color: blackFont,
      margin: EdgeInsets.symmetric(
          horizontal: SC.width(.1), vertical: SC.height(.0095)),
      child: Material(
        borderRadius:
            BorderRadius.circular(SC.radiusCalculate(SC.height(.095))),
        color: Colors.transparent,
        child: InkWell(
          borderRadius:
              BorderRadius.circular(SC.radiusCalculate(SC.height(.095))),
          onTap: () {
            Get.toNamed('/login');
          },
          child: Padding(
            padding: EdgeInsets.only(left: SC.width(.13)),
            child: Row(
              children: [
                Flag(
                  countryCode.toUpperCase(),
                  height: SC.height(.095),
                  width: SC.width(.085),
                ),
                SizedBox(width: SC.width(.065)),
                Text(
                  language.toUpperCase(),
                  style: buttonStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
