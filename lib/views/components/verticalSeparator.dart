import 'package:flutter/material.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';


class VerticalSeparator extends StatelessWidget {
  const VerticalSeparator({
    Key? key,
    required this.height,
  }) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: SC.height(height));
  }
}
