import 'package:flutter/material.dart';
import 'package:new_wassa/views/styles/styles.dart';
import 'package:sizer/sizer.dart';
class WalletMoneyViewer extends StatelessWidget {
  const WalletMoneyViewer({
    Key? key, required this.color, required this.price,
  }) : super(key: key);
final Color color;
final String price;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(price, style: moneyStyle.copyWith(color: color), textAlign: TextAlign.center,),
        Positioned(
            right: -13..sp,
            top: -3..sp,
            child: Text("Frs", style: moneyStyle.copyWith(fontSize: 10..sp, color: color), textAlign: TextAlign.center,)),
      ],
    );
  }
}
