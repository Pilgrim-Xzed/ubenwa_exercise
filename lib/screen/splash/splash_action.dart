import 'package:equatable/equatable.dart';

abstract class SplashAction extends Equatable {
  const SplashAction();

  @override
  List<Object?> get props => [];
}

class PageUpdate extends SplashAction {
  final int page;

  PageUpdate(this.page);

  @override
  List<Object?> get props => [page];
}
