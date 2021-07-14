import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MaterialInkWell extends StatelessWidget {
  const MaterialInkWell({
    Key? key, required this.onPressed, required this.radius, required this.customBorder, required this.child, required this.personalizeBorderRadius,
  }) : super(key: key);
  final Function onPressed;
  final double radius;
  final BorderRadius personalizeBorderRadius;
  final ShapeBorder customBorder;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: customBorder,
      borderRadius:  BorderRadius.circular(radius) ,
      color: Colors.transparent,
      child: InkWell(
                  onTap:()=> onPressed,

        borderRadius: BorderRadius.circular(radius),

        customBorder: customBorder,
        child: child,
      ),
    );
  }
}
