import 'package:flutter/material.dart';

class AppColor {
  // Accent Color
  static const Color primary = const Color(0xFFD81E1E);
  static const Color onPrimary = const Color(0xFF000000);
  static const Color secondary = const Color(0xFF202020);
  static const Color onSecondary = const Color(0xFF231F1F);

  /// Neutral Colors
  static const Color background = const Color(0xFFFFFFFF);
  static const Color onBackground = const Color(0xFF363636);
  static const Color variantBackGround = const Color(0xFFE5DED4);
  static const Color onVariantBackground = const Color(0xFF363636);

  // Error Color
  static const Color error = const Color(0xFF8B0000);
  static const Color onError = const Color(0xFFFFFFFF);

  static const Color grey60 = const Color(0xFFC8C8C8);
  static const Color grey30 = const Color(0xFF5F5F5F);
  static const Color icon = const Color(0xFFB6B6B6);
  static const Color active = const Color(0xFFFFFFFF);
  static const Color cursorColor = const Color(0xFFFFFFFF);
  static const Color inactive = const Color(0xFF676363);

  ColorScheme toColorScheme(bool isDark) {
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
      surface: background,
      onSurface: onBackground,
    );

    return colorScheme;
  }
}
