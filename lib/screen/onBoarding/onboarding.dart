import 'package:code_test/common/common.dart';
import 'package:code_test/common/resource/strings.dart';
import 'package:code_test/domain/model/OnBoardingModel.dart';
import 'package:code_test/repository/router.dart';
import 'package:code_test/screen/partials/button_widget.dart';
import 'package:code_test/screen/partials/intro_section.dart';
import 'package:code_test/theme/component/text.dart';
import 'package:fluro/fluro.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../../screen/base/base.dart';

import 'onboarding_bloc.dart';
import 'onboarding_state.dart';
import 'onboarding_event.dart';
import 'package:nb_utils/nb_utils.dart' hide DotIndicator;
part 'onboarding_view.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BlocProvider(
          create: (_) => OnBoardingBloc(),
          child: _OnBoardingView(),
        ),
      
    );
  }
}
