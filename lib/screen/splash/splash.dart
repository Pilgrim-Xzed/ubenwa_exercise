
import 'package:code_test/common/common.dart';
import 'package:code_test/repository/router.dart';
import 'package:code_test/screen/main/main.dart';
import 'package:code_test/screen/main/main_bloc.dart';
import 'package:code_test/screen/partials/intro_section.dart';
import 'package:code_test/theme/component/text.dart';
import 'package:code_test/util/router.dart';
import 'package:code_test/util/stream.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';


import '../../../screen/base/base.dart';

import 'splash_bloc.dart';
import 'splash_state.dart';
import 'splash_event.dart';


part 'splash_view.dart';

class Splash extends StatelessWidget {
  Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
          create: (_) => SplashBloc(),
          child: _SplashView(),
        ),
      
    );
  }
}
