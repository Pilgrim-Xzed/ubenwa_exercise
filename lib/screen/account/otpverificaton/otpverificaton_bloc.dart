import 'package:flutter_bloc/flutter_bloc.dart';

import 'otpverificaton_event.dart';
import 'otpverificaton_state.dart';

class OtpVerificatonBloc extends Bloc<OtpVerificatonEvent, OtpVerificatonState> {
  OtpVerificatonBloc() : super(const OtpVerificatonState());

  @override
  Stream<OtpVerificatonState> mapEventToState(OtpVerificatonEvent event) async* {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
