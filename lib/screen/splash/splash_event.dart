import 'package:equatable/equatable.dart';

abstract class SplashEvent extends Equatable {
  const SplashEvent();

  @override
  List<Object> get props => [];
}

class OnInitializeEvent extends SplashEvent {

  final Duration delay;

  OnInitializeEvent(this.delay);

  @override
  List<Object> get props => [delay];
}
