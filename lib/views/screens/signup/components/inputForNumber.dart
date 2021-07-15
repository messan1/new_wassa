import 'package:flutter/material.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';
import 'package:new_wassa/views/styles/styles.dart';

class InputForNumber extends StatelessWidget {
  const InputForNumber({
    Key? key,
    required this.phone,
  }) : super(key: key);

  final String phone;

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      shape: BoxShape.circle,
      boxShadow: [Styles.backButtonShadow],
      alignment: Alignment.centerRight,
      image: new DecorationImage(
        image: new ExactAssetImage('assets/taxi.png'),
        fit: BoxFit.cover,
      ),
      linearGradient: LinearGradient(colors: [Colors.black]),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      minHeight: 0.0,
      personalizeBorderRadius: BorderRadius.circular(10),
      useBorderRadius: true,
      width: 0.0,
      margin: EdgeInsets.symmetric(horizontal: SC.width(.009)),
      height: .045,
      border: Border(bottom: BorderSide(color: blueFont, width: 2)),
      child: Center(
        child: Text(
          phone,
          textAlign: TextAlign.center,
          textScaleFactor: 1.5,
          style: TextStyle(fontWeight: FontWeight.w900, color: blueFont),
        ),
      ),
    );
  }
}
