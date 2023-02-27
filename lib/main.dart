import 'package:flutter/material.dart';

import 'src/shared/navigation/route_controller.dart';
import 'src/shared/navigation/route_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyTuBe',
      theme: ThemeData(primarySwatch: Colors.blue),
      showSemanticsDebugger: false,
      initialRoute: RouteNames.onBoarding,
      onGenerateRoute: AppRouter().pageRoutes,
    );
  }
}
