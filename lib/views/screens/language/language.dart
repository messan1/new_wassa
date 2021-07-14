import 'package:flutter/material.dart';
import 'package:new_wassa/app/scaffoldPlatform.dart';

import 'components/languageButton.dart';

GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      child: LanguageButton(
        language: 'Anglais',
        countryCode: 'US',
      ),
    );
  }
}
