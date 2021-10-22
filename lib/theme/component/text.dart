import 'package:code_test/common/common.dart';
import 'package:flutter/material.dart';

const String kBodyFontFamily = Constants.defaultBodyFont;
const String kHeaderFontFamily = Constants.defaultTitleFont;
const String kButtonFontFamily = Constants.defaultButtonFont;




TextStyle bodyFont(double fontSize,  [double? height,Color fontColor=Pallet.defaultFontColor,]) {
  return TextStyle(fontFamily: kBodyFontFamily).copyWith(
    fontSize: fontSize,
    color: fontColor,
    fontWeight: FontWeight.w500,
    height: height,
  );
}


TextStyle headerFont(double fontSize) {
  return TextStyle(fontFamily: kHeaderFontFamily).copyWith(
    fontSize: fontSize,
    color: Pallet.defaultFontColor,
    fontWeight: FontWeight.w800,
  );
}


TextStyle buttonFont(double fontSize,Color? textColor) {
  return TextStyle(fontFamily: kButtonFontFamily).copyWith(
    fontSize: fontSize,
    color: textColor,
    fontWeight: FontWeight.w700,
  );
}


