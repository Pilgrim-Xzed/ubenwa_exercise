import 'dart:async';
import '../../service/service.dart';

import '../base/base.dart';

import 'main_event.dart';
import 'main_state.dart';
import 'main_action.dart';

class MainBloc extends KBloc<MainEvent, MainAction, MainState> {
  final ApplicationService _appService;

  MainBloc(
    this._appService,
  ) : super(const MainState());

  @override
  Stream<MainState> mapEventToState(MainEvent event) async* {
  if (event is StartupEvent) {
     print("Running startup event");
      dispatch(NavigateToIndex(false));
    } 
  }

  @override
  Future<void> close() async {
   
    return super.close();
  }
}
