import 'package:flutter/material.dart';

import '../../../config/device_config.dart';
import '../../../shared/constants/app_assests.dart';
import '../../../widgets/app_circle_avatar.dart';

class ChannelFollowedList extends StatelessWidget {
  const ChannelFollowedList({super.key});

  @override
  Widget build(BuildContext context) {
    double avatarImgSize = 0.0;
    EdgeInsetsGeometry avatarImgPadding = EdgeInsets.zero;
    switch (DeviceConfig.deviceScreenType) {
      case DeviceScreenType.mobile:
        avatarImgSize = 23.0;
        avatarImgPadding = const EdgeInsetsDirectional.symmetric(
          horizontal: 5,
          vertical: 15,
        );
        break;
      case DeviceScreenType.desktop:
      case DeviceScreenType.tablet:
        avatarImgSize = 30.0;
        avatarImgPadding = const EdgeInsetsDirectional.symmetric(
          horizontal: 10,
          vertical: 20,
        );
        break;
    }
    return Flexible(
      flex: 1,
      child: ListView.builder(
        itemCount: 15,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => AppCircleAvatar(
          padding: avatarImgPadding,
          size: avatarImgSize,
          backgroundImage: AssetImage(AppAssets.avatar_1),
          isActive: index % 2 == 0,
          onTapped: () {
            /// TODO: Implement event click
          },
        ),
      ),
    );
  }
}
