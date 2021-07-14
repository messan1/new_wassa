
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';


class Dialog extends StatefulWidget {
  final IconData arrowDirection;
  final Function onPressed;
  final String title;
  final bool normalCase;
  final bool rotateArrow;
  final AnimationController controller;

  const Dialog(
      {Key? key,
      required this.arrowDirection,
      required this.onPressed,
      required this.title,
      required this.normalCase,
      required this.rotateArrow,
      required this.controller})
      : super(key: key);

  @override
  _DialogState createState() => _DialogState(this.arrowDirection,
      this.onPressed, this.title, this.normalCase, this.controller);
}

class _DialogState extends State<Dialog> with SingleTickerProviderStateMixin {
  final IconData arrowDirection;
  final Function onPressed;
  final String title;
  final bool normalCase;
  final AnimationController controller;

  _DialogState(this.arrowDirection, this.onPressed, this.title, this.normalCase,
      this.controller);
  @override
  Widget build(BuildContext context) {
            AwesomeDialog(
            context: context,
            title: "Vérification de Données",
            desc: "Vérifiez vos données de connexion",
            dialogType: DialogType.ERROR,
            width: SC.height(.45),

            animType: AnimType.SCALE,
            btnOkColor: Colors.redAccent,
            btnOkOnPress: () {}
            )
          ..show();
    return Container();
  }
}
