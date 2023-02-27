import 'package:flutter/material.dart';

class AppColor {
  // Accent Color
  final Color primary = const Color(0xFFD81E1E);
  final Color onPrimary = const Color(0xFF000000);
  final Color secondary = const Color(0xFF000000);
  final Color onSecondary = const Color(0xFF231F1F);

  /// Neutral Colors
  final Color background = const Color(0xFFFFFFFF);
  final Color onBackground = const Color(0xFF363636);
  final Color variantBackGround = const Color(0xFFE5DED4);
  final Color onVariantBackground = const Color(0xFF363636);

  // Error Color
  final Color error = const Color(0xFF8B0000);
  final Color onError = const Color(0xFFFFFFFF);

  final bool isDark = true;

  ColorScheme toColorScheme() {
    ColorScheme colorScheme = ColorScheme(
      brightness: isDark ? Brightness.dark : Brightness.light,
      primary: primary,
      onPrimary: onPrimary,
      secondary: secondary,
      onSecondary: onSecondary,
      error: error,
      onError: onError,
      background: background,
      onBackground: onBackground,
      surface: onBackground,
      onSurface: Colors.white,
    );

    return colorScheme;
  }
}
