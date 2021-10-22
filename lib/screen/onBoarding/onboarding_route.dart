import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../common/common.dart';
import '../../router/router.dart';

import 'onboarding.dart';

@Named('OnBoardingRoute')
@injectable
class OnBoardingRoute extends KRouter {
  OnBoardingRoute();

  @override
  String path = 'onboarding';

  @override
  Widget? handlerFunc(BuildContext? context, RouteParam params) {
    return OnBoarding();
  }
}
