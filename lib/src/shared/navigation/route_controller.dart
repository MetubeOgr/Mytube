import 'package:flutter/cupertino.dart';

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
          default:
            return NotFoundScreen();
        }
      }),
    );
  }
}
