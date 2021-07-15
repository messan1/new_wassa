import 'package:flutter/material.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';
import 'package:new_wassa/views/styles/styles.dart';

class BackspaceButton extends StatelessWidget {
  //final UserBloc userBloc;
  final bool isCode;
  const BackspaceButton({Key? key,  required this.isCode})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ExtendedContainer(
      color: Colors.white,
      shape: BoxShape.circle,
      boxShadow: [Styles.backButtonShadow],
      alignment: Alignment.centerRight,
      border: Border(),
      height: 0.0,
      image: new DecorationImage(
        image: new ExactAssetImage('assets/taxi.png'),
        fit: BoxFit.cover,
      ),
      linearGradient: LinearGradient(colors: [Colors.black]),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      minHeight: 0.0,
      useBorderRadius: true,
      width: 0.0,
      personalizeBorderRadius: BorderRadius.circular(15),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Material(
        borderRadius: BorderRadius.circular(15),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            //userBloc.backspace(isCode: isCode);
          },
          child: Padding(
            padding: EdgeInsets.all(SC.height(025)),
            child: Center(
              child: Icon(
                Icons.backspace_rounded,
                color: greyFont,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
