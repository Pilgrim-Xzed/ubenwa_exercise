import 'package:flutter_bloc/flutter_bloc.dart';

import 'onboarding_event.dart';
import 'onboarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(const OnBoardingState());

  @override
  Stream<OnBoardingState> mapEventToState(OnBoardingEvent event) async* {
    if (event is OnInitializeEvent) {
      yield* _initialize(event);
    }

    
  }

   Stream<OnBoardingState> _initialize(OnInitializeEvent event) async* {
  
      final __state = state;
      yield __state;
      
  }

  
}


