import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_wassa/views/styles/styles.dart';

import 'extendedContainer.dart';

class DropButton extends StatelessWidget {
  final List<String> items;
  final String value, title;


  const DropButton({
    Key? key,
    required this.items,
    required this.value,

    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 2),
          child: Text(
            title.toUpperCase(),
            style: inputStyle,
          ),
        ),
        SizedBox(height: 7),
        ExtendedContainer(
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
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          minHeight: 0.0,
          useBorderRadius: true,
          width: 0.0,
          personalizeBorderRadius: BorderRadius.circular(15),
          padding: EdgeInsets.symmetric(horizontal: 10),
          color: greyFont.withOpacity(.45),
          child: DropdownButton(
            items: buildMItem(items),
            underline: Container(width: double.infinity),
            isExpanded: true,
            value: value,
            elevation: 0,
            dropdownColor: whiteFont.withOpacity(.7),
            icon: Align(
              child: Icon(Icons.keyboard_arrow_down_rounded, color: blackFont),
              alignment: Alignment.centerRight,
            ),
            iconSize: 18,
            hint: Text(
              '',
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
            ),
            onChanged: (value) => {},
          ),
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> buildMItem(List<String> items) {
    return items
        .map((item) => DropdownMenuItem<String>(
              child: Row(
                children: [
                  Text(
                    item,
                    textScaleFactor: .85,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      color: blackFont,
                    ),
                  ),
                ],
              ),
              value: item,
            ))
        .toList();
  }
}
