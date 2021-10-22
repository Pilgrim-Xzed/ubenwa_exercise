import 'package:code_test/common/common.dart';
import 'package:code_test/screen/account/register/register_form.dart';

import 'package:code_test/screen/partials/auth_screen_custom_shape.dart';

import 'package:code_test/screen/partials/intro_section.dart';
import 'package:code_test/screen/partials/socal_media_widget.dart';
import 'package:code_test/theme/component/text.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../screen/base/base.dart';

import 'register_bloc.dart';
import 'register_state.dart';
import 'register_event.dart';

part 'register_view.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  BlocProvider(
          create: (_) => RegisterBloc(),
          child: _RegisterView(),
        
      ),
    );
  }
}
