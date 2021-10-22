import 'package:code_test/domain/model/OnBoardingModel.dart';
import 'package:equatable/equatable.dart';

class OnBoardingState extends Equatable {
  final List<OnBoardingModel>? screens;
  final int currentPage;
  const OnBoardingState({this.screens = const [ ...screenList],this.currentPage = 0});

 OnBoardingState copyWith({
    List<OnBoardingModel>? screens,
    int? currentPage,
    
  }) =>
      OnBoardingState(
        screens: screens ?? this.screens,
        currentPage: currentPage??this.currentPage,
      
      );
  @override
  List<Object> get props => [];
}
