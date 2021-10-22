import 'package:flutter/material.dart';

class Screen {
  
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  

  static double? mockupHeight;
  static double? mockupWidth;



  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;

    mockupHeight = 812;
    mockupWidth = 375;

    
  }



 double get textScaleFactor => screenWidth! / mockupWidth!;

 double scaledHeight(double height){
    return height/mockupHeight! * screenHeight!;
 } 


  double scaledWidth(double width){
    return width/mockupWidth! * screenWidth!;
 } 
}


