import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../shared/navigation/route_name.dart';
import '../shared/styles/custome_style.dart';
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
    double? _loginButtonWidth;
    var _rowButtonsPadding;
    var _rightRowButtonsPacing;

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
        _loginButtonWidth = 150;
        _rowButtonsPadding = const EdgeInsets.fromLTRB(34, 108, 34, 114);
        _rightRowButtonsPacing = const SizedBox.shrink();
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
        _loginButtonWidth = 310;
        _rowButtonsPadding = const EdgeInsets.fromLTRB(50, 170, 50, 150);
        _rightRowButtonsPacing = const Spacer();
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
              OnBoardingStrings.titleIntro,
              textAlign: TextAlign.center,
              style: _titleIntroStyle,
            ),
            SizedBox(height: _introSpacing),
            Text(
              OnBoardingStrings.subTitleIntro,
              textAlign: TextAlign.center,
              style: _subtitleIntroStyle,
            ),
            Padding(
              padding: _rowButtonsPadding,
              child: Row(
                children: [
                  CommonRoundedButton(
                    title: OnBoardingStrings.logIn,
                    minWidth: _loginButtonWidth,
                    onPressed: () =>
                        Navigator.pushNamed(context, RouteNames.logIn),
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
                  _rightRowButtonsPacing,
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                text: OnBoardingStrings.dontHaveAccount,
                style: _titleSignUpLinkStyle,
                children: [
                  WidgetSpan(
                    child: GestureDetector(
                      child: Text(
                        OnBoardingStrings.signUp,
                        style: _signUpStyle,
                      ),
                      onTap: () =>
                          Navigator.pushNamed(context, RouteNames.signUp),
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
