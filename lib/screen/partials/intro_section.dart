import 'dart:ui';

import 'package:code_test/common/common.dart';
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final Widget? child;
  const Section({ Key? key,this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Screen().init(context);
    return Container(

      height: Screen.screenHeight,
      width: Screen.screenWidth,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            stops: [0.02,0.3,0.6, 0.8],
            end: Alignment.bottomCenter,
              colors: [Colors.white,Pallet.topGradient,Pallet.centerGradient,Pallet.bottomGradient])),
      child: BackdropFilter(
        filter: ColorFilter.mode(Pallet.topGradient, BlendMode.colorBurn
        ),
        child: child)
    );
  }
}