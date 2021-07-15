import 'package:flutter/material.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:new_wassa/views/components/extendedContainer.dart';
import 'package:new_wassa/views/components/verticalSeparator.dart';
import 'package:new_wassa/views/styles/styles.dart';

class AddDocsPanel extends StatelessWidget {
  const AddDocsPanel({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      shape: BoxShape.circle,
      boxShadow: [Styles.backButtonShadow],
      alignment: Alignment.centerRight,
      border: Border(),
      image: new DecorationImage(
        image: new ExactAssetImage('assets/taxi.png'),
        fit: BoxFit.cover,
      ),
      linearGradient: LinearGradient(colors: [Colors.black]),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      minHeight: 0.0,
      useBorderRadius: true,
      width: 0.0,
      height: .275,
      color: Colors.blueGrey,
      personalizeBorderRadius: BorderRadius.circular(
        SC.height(.035),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(
          SC.height(.035),
        ),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(
            SC.height(.035),
          ),
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Importer vos documents CNI / Passport / permit de conduire',
                textAlign: TextAlign.center,
                textScaleFactor: 1.15,
                style: TextStyle(color: whiteFont, fontWeight: FontWeight.w900),
              ),
              VerticalSeparator(
                height: 0.2,
              ),
              ExtendedContainer(
                shape: BoxShape.circle,
                alignment: Alignment.centerRight,
                border: Border(),
                image: new DecorationImage(
                  image: new ExactAssetImage('assets/taxi.png'),
                  fit: BoxFit.cover,
                ),
                linearGradient: LinearGradient(colors: [Colors.black]),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                minHeight: 0.0,
                personalizeBorderRadius: BorderRadius.circular(10),
                height: .075,
                useBorderRadius: true,
                width: SC.width(.25),
                color: blueFont,
                boxShadow: [Styles.backButtonShadow],
                child: Center(
                  child: Icon(
                    Icons.add_circle_outline,
                    color: whiteFont,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
