import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_wassa/views/styles/styles.dart';


class ScaffoldPlatform extends StatelessWidget {
  final Widget child;
  final String appBarTitle;
  final bool activeBackButton;
  final Widget leading;
  final Color titleColor;
  final Color backgroundColor;
  final Widget drawer;
  final Color appBarIconColor;
  final GlobalKey<ScaffoldState> scaffoldState;
  const ScaffoldPlatform(
      {Key? key,
      required this.appBarTitle,
      required this.activeBackButton,
      required this.child,
      required this.leading,
      required this.titleColor,
      required this.drawer,
      required this.scaffoldState,
      required this.backgroundColor,
      required this.appBarIconColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldState,
      backgroundColor: backgroundColor,
      extendBodyBehindAppBar: true,
      drawer: drawer,
      appBar: AppBar(
        leading: leading ,
        iconTheme: IconThemeData(
            color: appBarIconColor),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          appBarTitle ,
          style:  headerStyle.copyWith(color: titleColor),
        ),
      ),
      body: child,
    );
  }
}
