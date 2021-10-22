import 'package:equatable/equatable.dart';

abstract class MainEvent extends Equatable {
  const MainEvent();

  @override
  List<Object?> get props => [];
}

class StartupEvent extends MainEvent {

  StartupEvent();

  @override
  List<Object?> get props => [];
}