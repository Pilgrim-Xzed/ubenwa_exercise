import 'package:code_test/common/common.dart';

import 'package:code_test/screen/partials/button_widget.dart';
import 'package:code_test/theme/component/text.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';

class OTPForm extends StatefulWidget {
  final Function? changeForm;
  final bool? isClinicalUser;
  const OTPForm({Key? key, this.changeForm, this.isClinicalUser})
      : super(key: key);

  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  @override
  Widget build(BuildContext context) {
    Screen().init(context);
    return Column(
      children: [
        24.height,
        Text(
          "Verification",
          style: headerFont(22),
          textScaleFactor: Screen().textScaleFactor,
        ),
        34.height,
        Text(
          "Enter the 4 digit code sent via \n SMS to this number #",
          style: bodyFont(13),
          textScaleFactor: Screen().textScaleFactor,
          textAlign: TextAlign.center,
        ),
        17.height,
        Container(
          width: Screen().scaledWidth(150),
          color: Colors.transparent,
          child: PinCodeTextField(

          
            length: 4,
            obscureText: false,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              inactiveColor:Colors.white,
              inactiveFillColor: Pallet.inputBg,
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: Screen().scaledHeight(41),
              fieldWidth: Screen().scaledWidth(31),
              activeFillColor: Colors.white,
              selectedFillColor: Pallet.inputBg

              
            ),
            animationDuration: Duration(milliseconds: 300),
            enableActiveFill: true,
            onCompleted: (v) {
              print("Completed");
            },
            onChanged: (value) {
              print(value);
              setState(() {});
            },
            beforeTextPaste: (text) {
              print("Allowing to paste $text");
              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
              //but you can show anything you want here, like your pop up saying wrong paste format or etc
              return true;
            },
            appContext: context,
          ),
        ),
        20.height,
        FormButtonWidget(),
        Spacer(),
        Row(
          children: [
            Column(
              children: [
                SvgPicture.asset(
                  Assets.stetoscope,
                  color: widget.isClinicalUser! ? Colors.black : Pallet.grey,
                ),
                Text(
                  "Clinical User",
                  style: bodyFont(15),
                )
              ],
            ).paddingOnly(left: 30, bottom: 25).onTap(() {
              widget.changeForm!(true);
            }),
            Spacer(),
            Column(
              children: [
                SvgPicture.asset(Assets.user,
                    color: widget.isClinicalUser! ? Pallet.grey : Colors.black),
                Text(
                  "Regular User",
                  style: bodyFont(15),
                )
              ],
            ).paddingOnly(right: 30, bottom: 25).onTap(() {
              widget.changeForm!(false);
            }),
          ],
        ),
      ],
    );
  }
}
