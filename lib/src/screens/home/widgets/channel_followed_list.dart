import 'package:flutter/material.dart';

import '../../../config/device_config.dart';
import '../../../shared/constants/app_assests.dart';
import '../../../widgets/app_circle_avatar.dart';

class ChannelFollowedList extends StatelessWidget {
  const ChannelFollowedList({super.key});

  @override
  Widget build(BuildContext context) {
    double _avatarImgSize = 0.0;
    double _followsListHeight = 0.0;
    EdgeInsetsGeometry _avatarImgPadding = EdgeInsets.zero;
    switch (DeviceConfig.deviceScreenType) {
      case DeviceScreenType.mobile:
        _avatarImgSize = 23.0;
        _avatarImgPadding = const EdgeInsetsDirectional.symmetric(
          horizontal: 5,
          vertical: 15,
        );
        _followsListHeight = 80;
        break;
      case DeviceScreenType.desktop:
      case DeviceScreenType.tablet:
        _avatarImgSize = 30.0;
        _avatarImgPadding = const EdgeInsetsDirectional.symmetric(
          horizontal: 10,
          vertical: 20,
        );
        _followsListHeight = 100;
        break;
    }
    return SizedBox(
      height: _followsListHeight,
      child: ListView.builder(
        itemCount: 15,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => AppCircleAvatar(
          padding: _avatarImgPadding,
          size: _avatarImgSize,
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
