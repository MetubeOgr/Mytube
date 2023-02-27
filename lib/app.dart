import 'package:flutter/material.dart';

import 'src/shared/navigation/route_controller.dart';
import 'src/shared/navigation/route_name.dart';
import 'src/shared/styles/themes/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyTuBe',
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.onBoarding,
      onGenerateRoute: AppRouter().pageRoutes,
    );
  }
}
