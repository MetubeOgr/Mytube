import 'package:flutter/cupertino.dart';

import '../../screens/authenticate/login_screen.dart';
import '../../screens/authenticate/sign_up_screen.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/not_found_screen.dart';
import '../../screens/onboarding_screen.dart';
import 'route_name.dart';

class AppRouter {
  CupertinoPageRoute pageRoutes(RouteSettings settings) {
    return CupertinoPageRoute(
      builder: ((context) {
        switch (settings.name) {
          case RouteNames.init:
          case RouteNames.onBoarding:
            return OnBoardingScreen();
          case RouteNames.logIn:
            return LoginScreen();
          case RouteNames.signUp:
            return SignUpScreen();
          case RouteNames.home:
            return HomeScreen();
          default:
            return NotFoundScreen();
        }
      }),
    );
  }
}
