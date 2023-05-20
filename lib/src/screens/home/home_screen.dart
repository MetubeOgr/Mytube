import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/constants/app_assests.dart';
import '../../widgets/app_circle_avatar.dart';
import 'widgets/channel_followed_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SvgPicture.asset(
            AppAssets.youtubeLogo,
            width: 40,
            height: 40,
          ),
        ),
        leadingWidth: 70,
        title: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  child: SvgPicture.asset(AppAssets.search),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: InkWell(
                  child: SvgPicture.asset(AppAssets.notification),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        actions: [
          Align(
            alignment: Alignment.center,
            child: AppCircleAvatar(
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
