import 'package:code_test/common/common.dart';
import 'package:code_test/repository/router.dart';
import 'package:code_test/screen/account/otpverificaton/otp_form.dart';
import 'package:code_test/screen/partials/auth_screen_custom_shape.dart';
import 'package:code_test/screen/partials/button_widget.dart';
import 'package:code_test/screen/partials/intro_section.dart';
import 'package:code_test/theme/component/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../screen/base/base.dart';

import 'otpverificaton_bloc.dart';
import 'otpverificaton_state.dart';
import 'otpverificaton_event.dart';


part 'otpverificaton_view.dart';

class OtpVerificaton extends StatelessWidget {
  OtpVerificaton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  BlocProvider(
          create: (_) => OtpVerificatonBloc(),
          child: _OtpVerificatonView(),
        ),
      
    );
  }
}
