import 'package:code_test/common/common.dart';
import 'package:code_test/screen/account/phoneverificaton/phone_form.dart';
import 'package:code_test/screen/partials/auth_screen_custom_shape.dart';
import 'package:code_test/screen/partials/intro_section.dart';
import 'package:code_test/theme/component/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../screen/base/base.dart';

import 'phoneverificaton_bloc.dart';
import 'phoneverificaton_state.dart';
import 'phoneverificaton_event.dart';

part 'phoneverificaton_view.dart';

class PhoneVerificaton extends StatelessWidget {
  PhoneVerificaton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BlocProvider(
          create: (_) => PhoneVerificatonBloc(),
          child: _PhoneVerificatonView(),
        ),
      
    );
  }
}
