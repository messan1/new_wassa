import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:new_wassa/views/styles/styles.dart';


class ConnectWithSocialNetwork extends StatelessWidget {
  const ConnectWithSocialNetwork({
    Key? key,
    required this.fontAwesomeIcons,
    required this.onTap,
  }) : super(key: key);
  final IconData fontAwesomeIcons;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=> onTap,
      child: FaIcon(
        fontAwesomeIcons,
        size: SC.height(.045),
        color: greyFont,
      ),
    );
  }
}
