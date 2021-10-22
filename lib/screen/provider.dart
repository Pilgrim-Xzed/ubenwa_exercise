import 'package:code_test/screen/account/login/login_route.dart';
import 'package:code_test/screen/account/phoneverificaton/phoneverificaton_route.dart';
import 'package:code_test/screen/account/register/register_route.dart';
import 'package:injectable/injectable.dart';

import '../router/router.dart';
import 'account/otpverificaton/otpverificaton_route.dart';
import 'onBoarding/onboarding_route.dart';
import 'splash/splash_route.dart';


@injectable
class ScreenProvider {
  final SplashRoute _splashRoute;
  final OnBoardingRoute _onBoardingRoute;
  final RegisterRoute _registerRoute;
  final LoginRoute _loginRoute;
  final PhoneVerificatonRoute _phoneVerificatonRoute;
  final OtpVerificatonRoute _otpVerificatonRoute;
  



  ScreenProvider(
    @Named('SplashRoute') this._splashRoute,
    @Named('OnBoardingRoute') this._onBoardingRoute,
    @Named('RegisterRoute') this._registerRoute,
    @Named('LoginRoute') this._loginRoute,
    @Named('PhoneVerificatonRoute') this._phoneVerificatonRoute,
    @Named('OtpVerificatonRoute') this._otpVerificatonRoute,
   
   
  );

  List<KRouter> get routes => <KRouter>[
        _splashRoute,
        _onBoardingRoute,
        _registerRoute,
        _loginRoute,
        _phoneVerificatonRoute,
        _otpVerificatonRoute
       
      ];
}
