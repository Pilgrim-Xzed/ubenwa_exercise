import 'package:code_test/common/common.dart';
import 'package:code_test/common/resource/assets.dart';
import 'package:code_test/screen/account/login/login_form.dart';
import 'package:code_test/screen/partials/auth_screen_custom_shape.dart';
import 'package:code_test/screen/partials/button_widget.dart';
import 'package:code_test/screen/partials/intro_section.dart';
import 'package:code_test/theme/component/text.dart';
import 'package:code_test/widget/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../screen/base/base.dart';

import 'login_bloc.dart';
import 'login_state.dart';
import 'login_event.dart';

part 'login_view.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  BlocProvider(
          create: (_) => LoginBloc(),
          child: _LoginView(),
        ),
      
    );
  }
}
