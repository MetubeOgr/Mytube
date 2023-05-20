import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../config/device_config.dart';

import '../../shared/constants/app_assests.dart';
import '../../widgets/app_circle_avatar.dart';
import 'widgets/channel_followed_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry _appLogoPadding = EdgeInsets.zero;
    EdgeInsetsGeometry _appBarIconPadding = EdgeInsets.zero;
    double _leadingWith = 0.0;
    double _avtSize = 0.0;
    Size _appLogoSize = Size(0, 0);
    Size _defaultAppBarIconSize = Size(0, 0);

    switch (DeviceConfig.deviceScreenType) {
      case DeviceScreenType.mobile:
        _appLogoPadding = const EdgeInsets.only(left: 20);
        _appBarIconPadding = const EdgeInsets.symmetric(horizontal: 5);
        _leadingWith = 70;
        _appLogoSize = Size(40, 40);
        _avtSize = 23.0;
        _defaultAppBarIconSize = Size(25, 25);
        break;
      case DeviceScreenType.desktop:
      case DeviceScreenType.tablet:
        _appLogoPadding = const EdgeInsets.only(left: 30);
        _appBarIconPadding = const EdgeInsets.symmetric(horizontal: 10);
        _leadingWith = 100;
        _avtSize = 30.0;
        _appLogoSize = Size(60, 60);
        _defaultAppBarIconSize = Size(30, 30);
        break;
      default:
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: _appLogoPadding,
          child: SvgPicture.asset(
            AppAssets.youtubeLogo,
            width: _appLogoSize.width,
            height: _appLogoSize.height,
          ),
        ),
        leadingWidth: _leadingWith,
        title: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: _appBarIconPadding,
                child: InkWell(
                  child: SvgPicture.asset(
                    AppAssets.search,
                    height: _defaultAppBarIconSize.height,
                    width: _defaultAppBarIconSize.width,
                  ),
                  onTap: () {
                    /// TODO: Handle event when user click
                  },
                ),
              ),
              Padding(
                padding: _appBarIconPadding,
                child: InkWell(
                  child: SvgPicture.asset(
                    AppAssets.notification,
                    height: _defaultAppBarIconSize.height,
                    width: _defaultAppBarIconSize.width,
                  ),
                  onTap: () {
                    /// TODO: Handle event when user click
                  },
                ),
              ),
            ],
          ),
        ),
        actions: [
          Align(
            alignment: Alignment.center,
            child: AppCircleAvatar(
              size: _avtSize,
              backgroundImage: AssetImage(AppAssets.avatar_1),
              onTapped: () {
                /// TODO: Implement event click
              },
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          ChannelFollowedList(),
        ],
      ),
    );
  }
}
