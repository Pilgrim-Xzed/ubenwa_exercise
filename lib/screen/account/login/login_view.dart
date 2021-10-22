part of 'login.dart';

class _LoginView extends StatefulWidget {
  @override
  __LoginViewState createState() => __LoginViewState();
}

class __LoginViewState extends BaseState<_LoginView, LoginBloc, LoginState> {
  bool isClinicalUser = true;
  changeForm(bool value) {
    setState(() {
      isClinicalUser = value;
    });
  }

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
            Text(
              Strings.appName,
              style: headerFont(24),
              textScaleFactor: Screen().textScaleFactor,
            ),
            SizedBox(
              height: Screen().scaledHeight(59),
            ),
            Container(
              height: Screen().scaledHeight(409),
              width: Screen().scaledWidth(325),
              child: Stack(
                children: [
                 if(isClinicalUser)...[
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
                              child: LoginForm(
                                changeForm: changeForm,
                                isClinicalUser: isClinicalUser,
                              ),
                            ))),
                      )),
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
                                child: LoginForm(
                              changeForm: changeForm,
                              isClinicalUser: isClinicalUser,
                            )),
                          ).onTap(() {}))),
                    ),
                  )
                 ],
                 if(!isClinicalUser)...[ Positioned(
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
                              child: LoginForm(
                                changeForm: changeForm,
                                isClinicalUser: isClinicalUser,
                              ),
                            ))),
                      )),
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
                                child: LoginForm(
                              changeForm: changeForm,
                              isClinicalUser: isClinicalUser,
                            )),
                          ).onTap(() {}))),
                    ),
                  )].reversed
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
