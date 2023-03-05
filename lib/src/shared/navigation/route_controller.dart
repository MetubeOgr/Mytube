import 'package:flutter/cupertino.dart';

import '../../screens/authenticate/login_screen.dart';
import '../../screens/not_found_screen.dart';
import '../../screens/onboarding_screen.dart';
import 'route_name.dart';

class AppRouter {
  CupertinoPageRoute pageRoutes(RouteSettings settings) {
    return CupertinoPageRoute(
      builder: ((context) {
        switch (settings.name) {
          case RouteNames.onBoarding:
            return OnBoardingScreen();
          case RouteNames.login:
            return LoginScreen();
          default:
            return NotFoundScreen();
        }
      }),
    );
  }
}
