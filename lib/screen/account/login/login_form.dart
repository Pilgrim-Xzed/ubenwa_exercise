import 'package:code_test/common/common.dart';

import 'package:code_test/screen/partials/button_widget.dart';
import 'package:code_test/theme/component/text.dart';
import 'package:code_test/widget/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';

class LoginForm extends StatefulWidget {
  final Function? changeForm;
  final bool? isClinicalUser;
  const LoginForm({Key? key, this.changeForm, this.isClinicalUser})
      : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    Screen().init(context);
    return Column(
                                children: [
                                  24.height,
                                  Text(
                                    "Login",
                                    style: headerFont(22),
                                    textScaleFactor: Screen().textScaleFactor,
                                  ),
                                  20.height,
                                  KTextField(
                                    label: "Username",
                                  ),
                                  3.height,
                                  KTextField(
                                    label: "Password",
                                    obscureText: true,
                                  ),
                                  3.height,
                                  Text("forgot password?",
                style: bodyFont(11),
                textAlign: TextAlign.center,
                textScaleFactor: Screen().textScaleFactor),
                                  18.height,
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
