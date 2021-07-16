import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_wassa/app/scaffoldPlatform.dart';
import 'package:new_wassa/constants/constPadMargin.dart';
import 'package:new_wassa/constants/constSize.dart';
import 'package:new_wassa/constants/constString.dart';
import 'package:sizer/sizer.dart';

import 'components/orderCardWithStatus.dart';

GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class Historic extends StatefulWidget {
  @override
  _HistoricState createState() => _HistoricState();
}

class _HistoricState extends State<Historic>
    with SingleTickerProviderStateMixin {
  bool showHistoric = false;
  late AnimationController controller;

  @override
  initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPlatform(
        backgroundColor: Colors.white,
        drawer: Container(),
        leading: Container(),
        scaffoldState: _drawerKey,
        titleColor: Colors.black,
        activeBackButton: true,
        appBarIconColor: Colors.black,
        appBarTitle: "Historique",
        child: SafeArea(
          child: ListView(
            padding: ConstPadMargin.listViewPadding,
            children: [
            
              OrderCardWithStatus(
                date: "8 June 2019, 18:39",
                status: true,
                beginTime: "11:24",
                endTime: "11:24",
                startingPoint: "Ouagadougou, Burkina Faso aeroport",
                deliveryPoint: "Cité air France",
              ),
              SizedBox(height: ConstSize.safeAreaListView),
              SizedBox(
                height: 2.5.h,
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.linear,
                height: showHistoric
                    ? MediaQuery.of(context).size.height * 0.608
                    : 0,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      OrderCardWithStatus(
                        date: "8 June 2019, 18:39",
                        status: true,
                        beginTime: "11:24",
                        endTime: "11:24",
                        startingPoint: "Ouagadougou, Burkina Faso aeroport",
                        deliveryPoint: "Cité air France",
                      ),
                      OrderCardWithStatus(
                        date: "8 June 2019, 18:39",
                        status: false,
                        beginTime: "11:24",
                        endTime: "11:24",
                        startingPoint: "Ouagadougou, Burkina Faso aeroport",
                        deliveryPoint: "Cité air France",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.5.h,
              ),
            ],
          ),
        ));
  }
}
