import 'package:flutter/material.dart';
import 'themes/colors.dart';

/// This class will define text styles that is not really declared
/// in [AppTheme].
class AppCustomeStyle {
  static const TextStyle titleSmallBold = TextStyle(
    fontFamily: 'ProductSans-Bold',
    fontSize: 12,
    height: 14.56 / 12,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static const TextStyle titleButton = TextStyle(
    fontFamily: 'ProductSans-Bold',
    fontSize: 20,
    height: 24.26 / 20,
    color: Colors.white,
  );

  static const TextStyle titleButtonTablet = TextStyle(
    fontFamily: 'ProductSans-Bold',
    fontSize: 26,
    height: 24.26 / 20,
    color: Colors.white,
  );

  static const TextStyle hindTextField = TextStyle(
    fontFamily: 'ProductSans-Regular',
    fontSize: 18,
    height: 24.26 / 20,
    fontWeight: FontWeight.w400,
    color: AppColor.grey30,
  );

  static const TextStyle hindTextFieldTablet = TextStyle(
    fontFamily: 'ProductSans-Regular',
    fontSize: 21,
    height: 24.26 / 21,
    fontWeight: FontWeight.w500,
    color: AppColor.grey30,
  );

  static const TextStyle errorTextStyle = TextStyle(
    fontFamily: 'ProductSans-Regular',
    fontSize: 14,
    height: 16 / 14,
    fontWeight: FontWeight.w700,
    color: AppColor.error,
  );

  static const TextStyle displayLargeTablet = TextStyle(
    fontFamily: 'ProductSans-Bold',
    fontSize: 30,
    height: 29.11 / 24,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
}
