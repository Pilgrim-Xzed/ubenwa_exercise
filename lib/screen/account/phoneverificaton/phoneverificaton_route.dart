import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../../router/router.dart';

import 'phoneverificaton.dart';

@Named('PhoneVerificatonRoute')
@injectable
class PhoneVerificatonRoute extends KRouter {
  PhoneVerificatonRoute();

  @override
  String path = 'phoneverificaton';

  @override
  Widget? handlerFunc(BuildContext? context, RouteParam params) {
    return PhoneVerificaton();
  }
}
