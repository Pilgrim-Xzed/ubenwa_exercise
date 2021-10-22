import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../../router/router.dart';

import 'otpverificaton.dart';

@Named('OtpVerificatonRoute')
@injectable
class OtpVerificatonRoute extends KRouter {
  OtpVerificatonRoute();

  @override
  String path = 'otpverificaton';

  @override
  Widget? handlerFunc(BuildContext? context, RouteParam params) {
    return OtpVerificaton();
  }
}
