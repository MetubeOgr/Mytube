import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_typography.dart';
import '../custome_style.dart';
import 'colors.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColor.primary,
    colorScheme: AppColor().toColorScheme(true),
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      titleTextStyle: AppCustomeStyle.titleSmallBold,
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      displayLarge: AppTypography.data.displayLarge,
      displayMedium: AppTypography.data.displayMedium,
      displaySmall: AppTypography.data.displaySmall,
      bodySmall: AppTypography.data.bodySmall,
      titleSmall: AppTypography.data.titleSmall,
      titleMedium: AppTypography.data.titleMedium,
    ),
  );
}
