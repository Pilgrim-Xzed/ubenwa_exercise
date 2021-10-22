import 'package:equatable/equatable.dart';

class SplashState extends Equatable {
  final bool loaded;


  const SplashState({this.loaded = false});


SplashState copyWith({
    bool? loaded,
    int? page
  }) =>
      SplashState(
        loaded: loaded ?? this.loaded,
       
       
      );
  @override
  List<Object> get props => [loaded];
}
