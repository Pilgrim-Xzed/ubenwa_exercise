// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'module/screen.dart' as _i12;
import 'router/router_controller.dart' as _i10;
import 'screen/account/login/login_route.dart' as _i3;
import 'screen/account/otpverificaton/otpverificaton_route.dart' as _i5;
import 'screen/account/phoneverificaton/phoneverificaton_route.dart' as _i6;
import 'screen/account/register/register_route.dart' as _i7;
import 'screen/onBoarding/onboarding_route.dart' as _i4;
import 'screen/provider.dart' as _i9;
import 'screen/splash/splash_route.dart' as _i8;
import 'service/app.dart' as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final screenModule = _$ScreenModule();
  gh.factory<_i3.LoginRoute>(() => _i3.LoginRoute(),
      instanceName: 'LoginRoute');
  gh.factory<_i4.OnBoardingRoute>(() => _i4.OnBoardingRoute(),
      instanceName: 'OnBoardingRoute');
  gh.factory<_i5.OtpVerificatonRoute>(() => _i5.OtpVerificatonRoute(),
      instanceName: 'OtpVerificatonRoute');
  gh.factory<_i6.PhoneVerificatonRoute>(() => _i6.PhoneVerificatonRoute(),
      instanceName: 'PhoneVerificatonRoute');
  gh.factory<_i7.RegisterRoute>(() => _i7.RegisterRoute(),
      instanceName: 'RegisterRoute');
  gh.factory<_i8.SplashRoute>(() => _i8.SplashRoute(),
      instanceName: 'SplashRoute');
  gh.factory<_i9.ScreenProvider>(() => _i9.ScreenProvider(
      get<_i8.SplashRoute>(instanceName: 'SplashRoute'),
      get<_i4.OnBoardingRoute>(instanceName: 'OnBoardingRoute'),
      get<_i7.RegisterRoute>(instanceName: 'RegisterRoute'),
      get<_i3.LoginRoute>(instanceName: 'LoginRoute'),
      get<_i6.PhoneVerificatonRoute>(instanceName: 'PhoneVerificatonRoute'),
      get<_i5.OtpVerificatonRoute>(instanceName: 'OtpVerificatonRoute')));
  gh.factory<_i10.RouterController>(
      () => screenModule.getRouterController(get<_i9.ScreenProvider>()));
  gh.factory<_i11.ApplicationService>(
      () => _i11.ApplicationService(get<_i10.RouterController>()));
  return get;
}

class _$ScreenModule extends _i12.ScreenModule {}
