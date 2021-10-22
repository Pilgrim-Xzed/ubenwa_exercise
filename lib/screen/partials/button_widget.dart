import 'package:code_test/common/common.dart';
import 'package:code_test/theme/component/text.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class OnboardingButtonWidget extends StatelessWidget {
  final String? value;
  const OnboardingButtonWidget({Key? key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Screen().init(context);
    return Container(
      height: Screen().scaledHeight(34),
      width: Screen().scaledWidth(84),
      child: Text(
        value!,
        style: buttonFont(15, Pallet.lightGrey),
        textScaleFactor: Screen().textScaleFactor,
      ).center(),
      decoration: boxDecorationWithRoundedCorners(
          backgroundColor: Colors.transparent,
          border: Border.all(color: Pallet.lightGrey),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}

class FormButtonWidget extends StatelessWidget {
  const FormButtonWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Screen().init(context);
    return Container(
      height: Screen().scaledHeight(34),
      width: Screen().scaledWidth(200),
      
      child: Text(
        "Continue",
        style: bodyFont(15, 1,Colors.white),
        textScaleFactor: Screen().textScaleFactor,
      ).center(),
      decoration: boxDecorationWithRoundedCorners(
          gradient: LinearGradient(colors: [
            Color(0xFF77A9E0),
            Color(0xFF45B8F0),
          ]),
          border: Border.all(color: Pallet.lightGrey),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}