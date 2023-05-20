import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'src/config/device_config.dart';
import 'src/shared/navigation/route_controller.dart';
import 'src/shared/navigation/route_name.dart';
import 'src/shared/styles/themes/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      DeviceConfig().init(constrains);

      return MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'MyTuBe',
        theme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: RouteNames.home,
        onGenerateRoute: AppRouter().pageRoutes,
      );
    });
  }
}
