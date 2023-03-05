import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../shared/constants/app_assests.dart';

class GoogleButton extends StatelessWidget {
  final Function()? onTap;
  const GoogleButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        AppAssets.googleLogo,
        width: 35,
        height: 35,
      ),
    );
  }
}
