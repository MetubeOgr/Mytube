import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../shared/constrants/app_assests.dart';

class FacebookButton extends StatelessWidget {
  final Function()? onTap;
  const FacebookButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        AppAssets.facebookLogo,
        width: 45,
        height: 45,
      ),
    );
  }
}
