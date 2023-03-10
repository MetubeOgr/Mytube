import 'package:flutter/material.dart';

import '../config/device_config.dart';
import '../shared/styles/custome_style.dart';
import '../shared/styles/themes/colors.dart';

class CommonRoundedButton extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final double? height;
  final double? minWidth;
  final double? boderRadius;
  final Function()? onPressed;
  const CommonRoundedButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.height,
    this.minWidth,
    this.titleStyle,
    this.boderRadius,
  });

  @override
  Widget build(BuildContext context) {
    double? _defaultHeight;
    double? _defaultBoderRadius;
    TextStyle? _defaultTitleStyle;
    switch (DeviceConfig.deviceScreenType) {
      case DeviceScreenType.mobile:
        _defaultHeight = 55;
        _defaultBoderRadius = 15;
        _defaultTitleStyle = AppCustomeStyle.titleButton;
        break;
      case DeviceScreenType.tablet:
      case DeviceScreenType.desktop:
        _defaultHeight = 75;
        _defaultBoderRadius = 30;
        _defaultTitleStyle = AppCustomeStyle.titleButtonTablet;
        break;
    }
    return MaterialButton(
      onPressed: onPressed,
      height: height ?? _defaultHeight,
      minWidth: minWidth,
      child: Text(
        title,
        style: titleStyle ?? _defaultTitleStyle,
      ),
      color: AppColor.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(boderRadius ?? _defaultBoderRadius),
      ),
    );
  }
}
