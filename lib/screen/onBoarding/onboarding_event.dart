import 'package:code_test/domain/model/OnBoardingModel.dart';
import 'package:equatable/equatable.dart';

abstract class OnBoardingEvent extends Equatable {
  const OnBoardingEvent();

  @override
  List<Object> get props => [];
}


class OnInitializeEvent extends OnBoardingEvent {


  OnInitializeEvent();

  @override
  List<Object> get props => [];
}


