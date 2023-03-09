import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mytubr/src/shared/styles/custome_style.dart';

import '../config/device_config.dart';
import '../shared/constants/app_assests.dart';
import '../shared/constants/app_strings.dart';
import '../shared/styles/themes/colors.dart';
import '../widgets/common_button.dart';
import '../widgets/facebook_button.dart';
import '../widgets/google_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var _theme = Theme.of(context).textTheme;
    Size _logoSize;
    TextStyle? _titleIntroStyle;
    TextStyle? _subtitleIntroStyle;
    TextStyle? _titleSignUpLinkStyle;
    TextStyle? _signUpStyle;
    double? _introSpacing;
    double? _bottomScreenSpacing;
    double? _loginButtonWith;
    var _rowButtonsPadding;

    switch (DeviceConfig.deviceScreenType) {
      case DeviceScreenType.mobile:
        _logoSize = Size(90, 90);
        _titleIntroStyle = _theme.displayLarge;
        _subtitleIntroStyle = _theme.bodySmall?.apply(color: AppColor.grey60);
        _titleSignUpLinkStyle =
            _theme.bodySmall?.copyWith(color: AppColor.grey30);
        _signUpStyle = _theme.titleMedium?.copyWith(color: AppColor.grey60);
        _introSpacing = 27;
        _bottomScreenSpacing = 20;
        _loginButtonWith = 150;
        _rowButtonsPadding = const EdgeInsets.fromLTRB(34, 108, 34, 114);
        break;
      case DeviceScreenType.tablet:
      case DeviceScreenType.desktop:
        _logoSize = Size(120, 120);
        _titleIntroStyle = AppCustomeStyle.displayLargeTablet;
        _subtitleIntroStyle =
            _theme.displaySmall?.apply(color: AppColor.grey60);
        _titleSignUpLinkStyle =
            _theme.bodyLarge?.copyWith(color: AppColor.grey30);
        _signUpStyle = _theme.titleMedium?.copyWith(color: AppColor.grey60);
        _introSpacing = 30;
        _bottomScreenSpacing = 90;
        _loginButtonWith = 310;
        _rowButtonsPadding = const EdgeInsets.fromLTRB(50, 170, 50, 150);
        break;
    }
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset(
              AppAssets.youtubeBrandName,
              width: _logoSize.width,
              height: _logoSize.height,
            ),
            const Spacer(),
            Text(
              AppStrings.titleIntro,
              textAlign: TextAlign.center,
              style: _titleIntroStyle,
            ),
            SizedBox(height: _introSpacing),
            Text(
              AppStrings.subTitleIntro,
              textAlign: TextAlign.center,
              style: _subtitleIntroStyle,
            ),
            Padding(
              padding: _rowButtonsPadding,
              child: Row(
                children: [
                  CommonRoundedButton(
                    title: AppStrings.logIn,
                    minWidth: _loginButtonWith,
                    onPressed: () {
                      print('Login an account');
                    },
                  ),
                  const Spacer(),
                  GoogleButton(
                    onTap: () {
                      print('Login with Google');
                    },
                  ),
                  const Spacer(),
                  FacebookButton(
                    onTap: () {
                      print('Login with Facebook');
                    },
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                text: AppStrings.dontHaveAccount,
                style: _titleSignUpLinkStyle,
                children: [
                  WidgetSpan(
                    child: GestureDetector(
                      child: Text(
                        AppStrings.signUp,
                        style: _signUpStyle,
                      ),
                      onTap: () {
                        print('Sign up');
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: _bottomScreenSpacing),
          ],
        ),
      ),
    );
  }
}
