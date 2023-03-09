import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../config/device_config.dart';

import '../shared/constants/app_assests.dart';

class FacebookButton extends StatelessWidget {
  final Function()? onTap;
  const FacebookButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Size _size;
    switch (DeviceConfig.deviceScreenType) {
      case DeviceScreenType.mobile:
        _size = Size(45, 45);
        break;
      case DeviceScreenType.tablet:
      case DeviceScreenType.desktop:
        _size = Size(55, 55);
        break;
    }
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        AppAssets.facebookLogo,
        width: _size.width,
        height: _size.height,
      ),
    );
  }
}
