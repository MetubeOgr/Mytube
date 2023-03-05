import 'package:flutter/material.dart';
import 'package:mytubr/src/shared/styles/themes/colors.dart';

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

  static const TextStyle labelTextField = TextStyle(
    fontFamily: 'ProductSans-Regular',
    fontSize: 18,
    height: 24.26 / 20,
    fontWeight: FontWeight.w400,
    color: AppColor.grey30,
  );
}
