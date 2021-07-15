import 'package:flutter/material.dart';
import 'package:new_wassa/DataHandler/appData.dart';
import 'package:new_wassa/DataHandler/userAuth.dart';
import 'package:new_wassa/DataHandler/voiceData.dart';
import 'package:new_wassa/app/platformApp.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    //_userBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiProvider(
          child: PlatformApp(),
          providers: [
            ChangeNotifierProvider(
              create: (context) => AppData(),
            ),
            ChangeNotifierProvider(
              create: (context) => VoiceData(),
            ),
            ChangeNotifierProvider(
              create: (context) => UserAuth(),
            ),
            ChangeNotifierProvider(
              create: (context) => VoiceData(),
            ),
            //Provider(create: (context) => _userBloc),
          ],
        );
      },
    );
  }
}
