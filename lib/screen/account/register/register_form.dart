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

class RegisterForm extends StatefulWidget {
  final Function? changeForm;
  final bool? isClinicalUser;
  const RegisterForm({Key? key, this.changeForm,this.isClinicalUser}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    Screen().init(context);
    return Column(
      children: [
        17.height,
        Text(
          "SignUp",
          style: headerFont(22),
          textScaleFactor: Screen().textScaleFactor,
        ),
        17.height,
        KTextField(
          label: "Username",
        ),
        3.height,
        KTextField(
          label: "Email",
        ),
        3.height,
        KTextField(
          label: "Password",
          obscureText: true,
        ),
        3.height,
        Text("By entering your details, your are agreeing to our Terms of Service and Privacy Policy. Thanks!",
                style: bodyFont(11),
                textAlign: TextAlign.center,
                textScaleFactor: Screen().textScaleFactor)
            .paddingSymmetric(horizontal: Screen().scaledWidth(35)),
        7.height,
        FormButtonWidget().onTap(() {
          context.read<PageRouter>().navigateTo(
                Routes.phoneVerificationRoute,
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
        )
      ],
    );
  }
}
