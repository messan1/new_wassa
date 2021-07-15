import 'package:get/route_manager.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_wassa/app/scaffoldPlatform.dart';
import 'package:new_wassa/utils/sizeCalculator.dart';
import 'package:new_wassa/views/components/verticalSeparator.dart';
import 'package:new_wassa/views/screens/signup/components/addDocsPanel.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:provider/provider.dart';
GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class AddDocument extends StatefulWidget {
  @override
  _AddDocumentState createState() => _AddDocumentState();
}

class _AddDocumentState extends State<AddDocument> {
  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String email = "";
    String firstname = "";
    String lastname = "";
    String number = "";
    String bith = "";
    String password = "";

    final _size = MediaQuery.of(context).size;
    final _orientation = MediaQuery.of(context).orientation;
  
    @override
    void initState() {
   

      super.initState();
    }

    return LoaderOverlay(
      useDefaultLoading: true,
      child: ScaffoldPlatform(
     
        appBarIconColor: Colors.black,
        backgroundColor: Colors.white,
        drawer: Container(),
        leading: Container(),
        scaffoldState: _drawerKey,
        titleColor: Colors.black,
        appBarTitle: "Informations personnelles",
        activeBackButton: false,
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(
                horizontal: SC.width(085)),
            children: [
              Text(
                "Etape 4/4",
                textAlign: TextAlign.center,
                style: headerStyle,
              ),
              SizedBox(
                height: _orientation == Orientation.portrait
                    ? _size.height * .12
                    : _size.width * .08,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AddDocsPanel(),
                     VerticalSeparator(
                height: .08,
              ),
                  Container(
                   
                  ),
                ],
              ),
              VerticalSeparator(
                height: .08,
              ),
              Column(
                children: [
                  StreamBuilder<String>(
                    builder: (context, snapshot) {
                      return Container();
                    },
                  ),
                  VerticalSeparator(height: .014),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
