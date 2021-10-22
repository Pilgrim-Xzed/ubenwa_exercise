part of 'login.dart';

class _LoginView extends StatefulWidget {
  @override
  __LoginViewState createState() => __LoginViewState();
}

class __LoginViewState extends BaseState<_LoginView, LoginBloc, LoginState> {
  int stackIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Section(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Screen().scaledHeight(103),
            ),
            Image.asset(Assets.appLogo, height: Screen().scaledHeight(74.54)),
            12.height,
            Text(Strings.appName,style: headerFont(24),textScaleFactor: Screen().textScaleFactor,),
            SizedBox(
              height: Screen().scaledHeight(59),
            ),
            Container(
              height: Screen().scaledHeight(409),
              width: Screen().scaledWidth(325),
              child: Stack(
                
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: ClipRRect(
                      child: CustomPaint(
                          size: Size(Screen().scaledWidth(325),
                              Screen().scaledHeight(409)),
                          painter: BrownCustomPainter(),
                          child: (Container(
                            height: Screen().scaledHeight(409),
                            width: Screen().scaledWidth(325),
                            child: Column(),
                          ))),
                    ).onTap((){
                            print("Hello");
                          })
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: ClipRRect(
                      child: CustomPaint(
                          size: Size(Screen().scaledWidth(325),
                              Screen().scaledHeight(409)),
                          painter: WhiteCustomPainter(),
                          child: (Container(
                            height: Screen().scaledHeight(409),
                            width: Screen().scaledWidth(325),
                            child: Center(
                              child: Column(
                                children: [
                                  24.height,
                                  Text(
                                    "Login",
                                    style: headerFont(22),
                                    textScaleFactor: Screen().textScaleFactor,
                                  ),
                                  20.height,
                                  KTextField(
                                    label: "Username",
                                  ),
                                  3.height,
                                  KTextField(
                                    label: "Password",
                                    obscureText: true,
                                  ),
                                  37.height,
                                  FormButtonWidget()
                                ],
                              ),
                            ),
                          ).onTap((){
                     


                  }))),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
