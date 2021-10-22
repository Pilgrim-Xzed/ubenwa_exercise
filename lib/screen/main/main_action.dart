import 'package:equatable/equatable.dart';

abstract class MainAction extends Equatable {
  const MainAction();

  @override
  List<Object?> get props => [];
}

class NavigateToIndex extends MainAction {
  final bool transition;
  

  NavigateToIndex(this.transition);

  @override
  List<Object?> get props => [transition];
}
