import 'package:flutter_bloc/flutter_bloc.dart';

import 'splash_event.dart';
import 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState());

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    if (event is OnInitializeEvent) {
      yield* _initialize(event);
    }
  }


    Stream<SplashState> _initialize(OnInitializeEvent event) async* {
  
      await Future.delayed(event.delay, () {});
  
    
    yield state.copyWith(loaded: true);
   
  }
}
