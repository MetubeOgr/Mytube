import 'package:flutter/material.dart';

import '../shared/styles/custome_style.dart';
import '../shared/styles/themes/colors.dart';

class CommonRoundedButton extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final double? height;
  final double? minWidth;
  final double boderRadius;
  final Function()? onPressed;
  const CommonRoundedButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.height,
    this.minWidth,
    this.titleStyle,
    this.boderRadius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      height: height,
      minWidth: minWidth,
      child: Text(
        title,
        style: titleStyle ?? AppCustomeStyle.titleButton,
      ),
      color: AppColor.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(boderRadius),
      ),
    );
  }
}
