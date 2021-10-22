import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


abstract class BaseState<T extends StatefulWidget, B extends Bloc,
    S extends Equatable> extends State<T> {
  final List<StreamSubscription<dynamic>> steams = [];

  S? _currentState;

  B? _bloc;

  bool disposed = false;

  @override
  void initState() {
    _bloc = context.read<B>();
    context.read<B>().stream.listen((state) {
      if (state is S) {
        if (state == _currentState || disposed) return;
        _currentState = state;
        onChange(state);
      }
    });
    super.initState();
  }

  @mustCallSuper
  void onChange(S state) {}

  void close() {
    _bloc?.close();
  }

  @override
  void dispose() {
    disposed = true;
    for (var i = 0; i < steams.length; i++) {
      steams.elementAt(i).cancel();
    }
    this.close();
    super.dispose();
  }
}
