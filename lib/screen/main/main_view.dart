import 'package:code_test/repository/router.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../service/service.dart';
import '../../router/router_controller.dart';

import '../base/base.dart';


import 'main_bloc.dart';
import 'main_state.dart';

class Main extends StatelessWidget {
  final String index;

  final ApplicationService service;

  Main({
    Key? key,
    required this.index,
    required this.service,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiRepositoryProvider(
            providers: [
             
              RepositoryProvider<PageRouter>(
                create: (context) => PageRouter(service.routerController),
              ),
           
            ],
            child: BlocProvider(
              create: (_) => MainBloc(service),
              child: _MaterialApp(
                index: index,
                controller: service.routerController,
              ),
            ),
          );
        
      
  }
}

class _MaterialApp extends StatelessWidget {
  final String index;
  final RouterController controller;

  _MaterialApp({
    Key? key,
    required this.index,
   
    required this.controller,
  }) : super(key: key);

  Widget _onError(BuildContext context) {
    return Container(
      child: Center(child: Text("Index not found"),),
    );
  }

  @override
  Widget build(BuildContext context) {
    final indexRoute = controller.getHandler(index);
    return _MainView(
      child: MaterialApp(
        title: "",
       debugShowCheckedModeBanner: false,
        navigatorKey: controller.navigatorKey,
        onGenerateRoute: controller.generator,
       
        home: Material(
          child: indexRoute?.handlerFunc(
                context,
                {},
              ) ??
              _onError(context),
        ),
      ),
    );
  }
}

class _MainView extends StatefulWidget {
  final Widget child;

  _MainView({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  __MainViewState createState() => __MainViewState();
}

class __MainViewState extends BaseState<_MainView, MainBloc, MainState> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: _PageScrollBehavior(),
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return widget.child;
        },
      ),
    );
  }
}

class _PageScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
