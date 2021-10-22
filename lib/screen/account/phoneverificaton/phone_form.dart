import 'package:code_test/common/common.dart';
import 'package:code_test/repository/router.dart';
import 'package:code_test/screen/partials/button_widget.dart';
import 'package:code_test/theme/component/text.dart';
import 'package:code_test/widget/input.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/src/provider.dart';

class PhoneForm extends StatefulWidget {
  final Function? changeForm;
  final bool? isClinicalUser;
  const PhoneForm({Key? key, this.changeForm, this.isClinicalUser})
      : super(key: key);

  @override
  _PhoneFormState createState() => _PhoneFormState();
}

class _PhoneFormState extends State<PhoneForm> {
  @override
  Widget build(BuildContext context) {
    Screen().init(context);
    return Column(
      children: [
        SizedBox(height: Screen().scaledWidth(24),),
        Text(
          "Verification",
          style: headerFont(22),
          textScaleFactor: Screen().textScaleFactor,
        ),
       SizedBox(height: Screen().scaledWidth(34),),
        Text("Enter your phone #",
            style: bodyFont(13), textScaleFactor: Screen().textScaleFactor),
        KTextField(
          label: "",
        ),
        SizedBox(height: Screen().scaledWidth(20),),
        FormButtonWidget().onTap(() {
          context.read<PageRouter>().navigateTo(
                Routes.otpVerificationRoute,
                clearStack: false,
                context: context,
                transition: TransitionType.cupertino,
              );
        }),
Spacer(),
         Row(
            children: [
              Column(
                children: [
                  SvgPicture.asset(Assets.stetoscope,color: widget.isClinicalUser!?Colors.black:Pallet.grey,),
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
                  SvgPicture.asset(Assets.user,color: widget.isClinicalUser!?Pallet.grey:Colors.black),
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
