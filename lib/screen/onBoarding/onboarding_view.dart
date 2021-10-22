part of 'onboarding.dart';

class _OnBoardingView extends StatefulWidget {
  @override
  __OnBoardingViewState createState() => __OnBoardingViewState();
}

class __OnBoardingViewState
    extends BaseState<_OnBoardingView, OnBoardingBloc, OnBoardingState> {
  List<OnBoardingModel> screenItems = [];
  int currentPage = 0;
  PageController pageController = PageController();
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback(
      (Duration duration) => _initialize(),
    );
    super.initState();
  }

  void _initialize() {
    context.read<OnBoardingBloc>().add(
          OnInitializeEvent(),
        );
  }

  @override
  void onChange(OnBoardingState state) {
    super.onChange(state);
    screenItems = state.screens!;
    currentPage = state.currentPage;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Screen().init(context);
    return Section(
      child: Stack(
        children: [
          PageView(
            controller: pageController,
            children: screenItems.map((e) {
              return Container(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: Screen().scaledHeight(121)),
                        
                        Text(
                          e.title!,
                          style: headerFont(22),
                          textScaleFactor: Screen().textScaleFactor,
                        ).paddingBottom(11),
                        Text(
                          e.desc!,
                          style: bodyFont(13, 1.3),
                          textAlign: TextAlign.center,
                          textScaleFactor: Screen().textScaleFactor,
                        ),
                        SizedBox(height: Screen().scaledHeight(81)),
                        Container(
                          height: Screen().scaledHeight(409),
                          width: Screen().scaledWidth(325),
                          color: Pallet.onBoardingSquare.withOpacity(0.5),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(e.image!).paddingTop(29)),
                        ).center(),
                        SizedBox(height: Screen().scaledHeight(28)),
                      ],
                    ).paddingOnly(left: 24, right: 28),
                  ],
                ),
              );
            }).toList(),
            onPageChanged: (i) {
              currentPage = i;
              setState(() {
                
              });
            },
          ),
          Positioned(
              bottom: Screen().scaledHeight(50),
              left: Screen().scaledWidth(27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnboardingButtonWidget(value: Strings.login).onTap((){

  context.read<PageRouter>().navigateTo(
                            Routes.login,
                            clearStack: false,
                            context: context,
                            transition: TransitionType.cupertino,
                          );

                  }),
                  SizedBox(
                    width: Screen().scaledWidth(44),
                  ),
                  DotsIndicator(
                    dotsCount: 3,
                    position: currentPage.toDouble(),
                    decorator: DotsDecorator(
                      size: const Size.square(10),
                      activeSize: Size(Screen().scaledWidth(24), 10.0),
                      activeColor:Pallet.grey,
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                  SizedBox(
                    width: Screen().scaledWidth(44),
                  ),
                  OnboardingButtonWidget(value: Strings.signup).onTap((){
                      context.read<PageRouter>().navigateTo(
                            Routes.register,
                            clearStack: false,
                            context: context,
                            transition: TransitionType.cupertino,
                          );
                  }),
                ],
              )),


                Positioned(
            top: Screen().scaledHeight(58),
            left: Screen().scaledWidth(265),
            child: OnboardingButtonWidget(value: Strings.skip).onTap((){
              print("Skipping to last screen");
               pageController.animateToPage(2 , duration: Duration(milliseconds: 300), curve: Curves.linear);
            }),
          ),
        ],
      ),
    );
  }
}
