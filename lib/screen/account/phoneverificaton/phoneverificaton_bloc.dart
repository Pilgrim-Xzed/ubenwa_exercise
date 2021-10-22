import 'package:flutter_bloc/flutter_bloc.dart';

import 'phoneverificaton_event.dart';
import 'phoneverificaton_state.dart';

class PhoneVerificatonBloc extends Bloc<PhoneVerificatonEvent, PhoneVerificatonState> {
  PhoneVerificatonBloc() : super(const PhoneVerificatonState());

  @override
  Stream<PhoneVerificatonState> mapEventToState(PhoneVerificatonEvent event) async* {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
