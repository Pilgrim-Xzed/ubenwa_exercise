part of 'splash.dart';

final Duration _kAnimDuration = Duration(milliseconds: 1000);
class _SplashView extends StatefulWidget {
  @override
  __SplashViewState createState() => __SplashViewState();
}

class __SplashViewState
    extends BaseState<_SplashView, SplashBloc, SplashState> {

      @override
  void initState() {
    context.read<MainBloc>().observer.listen(_onMainAction).include(steams);
    WidgetsBinding.instance?.addPostFrameCallback(
      (Duration duration) => _initialize(),
    );
    
    super.initState();
    
  }

  void _onMainAction(MainAction? action) {
    context.read<PageRouter>().navigate(context, action);
  }

  void _initialize() {
    context.read<SplashBloc>().add(
          OnInitializeEvent(_kAnimDuration),
        );
  }

@override
  void onChange(SplashState state) {
    super.onChange(state);
    if (state.loaded) {
        print("Navigating to next page");
          context.read<PageRouter>().navigateTo(
                            Routes.onboarding,
                            clearStack: true,
                            context: context,
                            transition: TransitionType.cupertino,
                          );
    } else{
        // to impliment
    }
    
  }
  @override
  Widget build(BuildContext context) {
    Screen().init(context);
    return Section(
      child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.appLogo,height: Screen().scaledHeight(122.8),),

            20.height,
             Text(Strings.appName,style: headerFont(24),textScaleFactor: Screen().textScaleFactor,),
          ],
        )
      ),
    );
  }
}
