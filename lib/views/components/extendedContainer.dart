import 'package:flutter/material.dart';


class ExtendedContainer extends StatelessWidget {
  const ExtendedContainer({
    Key? key,
    required this.shape,
    required this.color,
    required this.height,
    required this.width,
    required this.boxShadow,
    required this.linearGradient,
    required this.image,
    required this.padding,
    required this.margin,
    required this.useBorderRadius,
    required this.personalizeBorderRadius,
    required this.child,
    required this.border, required this.alignment, required this.minHeight,
  }) : super(key: key);
  final Widget child;
  final BoxShape shape;
  final Color color;

  ///height [height] must be a double between 0 and 1
  final double height;
  final double width;
  final double minHeight;
  final List<BoxShadow> boxShadow;
  final LinearGradient linearGradient;
  final DecorationImage image;
  final AlignmentGeometry alignment;

  ///ExtendedContainer can generate default border radius based on iOS guidelines design
  ///to use it, [useBorderRadius] must have [true] value. It's [false] by default.
  ///If you want to personalize the border radius user [personalizeBorderRadius].
  final bool useBorderRadius;
  final BorderRadius personalizeBorderRadius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Border border;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: alignment,
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          shape: shape,
          color: color,
          gradient: linearGradient,
          // ignore: unnecessary_null_comparison
    
          boxShadow: boxShadow,
          image: image,
          border: border),
      child: child,
    );

  }}