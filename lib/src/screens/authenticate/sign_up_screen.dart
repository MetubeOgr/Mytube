import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/device_config.dart';
import '../../shared/constants/app_assests.dart';
import '../../shared/constants/app_strings.dart';
import '../../shared/navigation/route_name.dart';
import '../../shared/styles/themes/colors.dart';
import '../../widgets/app_text_form_field.dart';
import '../../widgets/common_button.dart';
import '../../widgets/facebook_button.dart';
import '../../widgets/google_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme _textTheme = Theme.of(context).textTheme;
    TextStyle? _prefixLoginLinkStyle;
    TextStyle? _loginLinkStyle;
    Size _appLogoSize = Size(0, 0);
    double? _leadingWidth;
    double? _appBarHeight;
    double? _backIconSize;
    double _screenBottomSpacing;
    var _screenContentPadding;
    var _appLogoTopSpacing;
    var _appLogoBottomSpacing;
    var _textFieldSpacing;
    var _loginButtonTopSpacing;
    var _loginButtonBottomSpacing;
    var _betweenSocialButtonsSpacing;
    var _socialButtonBottomSpacing;

    switch (DeviceConfig.deviceScreenType) {
      case DeviceScreenType.mobile:
        _prefixLoginLinkStyle =
            _textTheme.bodySmall?.apply(color: AppColor.grey30);
        _loginLinkStyle = _textTheme.titleMedium?.apply(color: AppColor.grey60);

        _screenContentPadding = const EdgeInsets.symmetric(horizontal: 20);
        _appLogoSize = Size(60, 60);
        _appLogoTopSpacing = SizedBox(height: 45);
        _appLogoBottomSpacing = SizedBox(height: 35);
        _leadingWidth = 50;
        _appBarHeight = 50;
        _backIconSize = 25;
        _screenBottomSpacing = 30;
        _textFieldSpacing = const SizedBox(height: 15);
        _loginButtonTopSpacing = const SizedBox(height: 29);
        _loginButtonBottomSpacing = const SizedBox(height: 64);
        _betweenSocialButtonsSpacing = const SizedBox(width: 55);
        _socialButtonBottomSpacing = const SizedBox(height: 75);
        break;
      case DeviceScreenType.tablet:
      case DeviceScreenType.desktop:
        _prefixLoginLinkStyle =
            _textTheme.displayMedium?.apply(color: AppColor.grey30);
        _loginLinkStyle =
            _textTheme.displayMedium?.apply(color: AppColor.grey60);

        _screenContentPadding = const EdgeInsets.symmetric(horizontal: 100);
        _appLogoSize = Size(100, 100);
        _appLogoTopSpacing = SizedBox(height: 100);
        _appLogoBottomSpacing = SizedBox(height: 60);
        _leadingWidth = 100;
        _appBarHeight = 100;
        _backIconSize = 35;
        _screenBottomSpacing = 30;
        _textFieldSpacing = const SizedBox(height: 21);
        _loginButtonTopSpacing = const SizedBox(height: 35);
        _loginButtonBottomSpacing = const SizedBox(height: 72);
        _betweenSocialButtonsSpacing = const SizedBox(width: 60);
        _socialButtonBottomSpacing = const SizedBox(height: 150);
        break;
    }
    return Scaffold(
      appBar: AppBar(
        leadingWidth: _leadingWidth,
        toolbarHeight: _appBarHeight,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: _backIconSize,
          ),
          color: AppColor.icon,
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
        ),
      ),
      body: ListView(
        padding: _screenContentPadding,
        children: [
          _appLogoTopSpacing,
          SvgPicture.asset(
            AppAssets.youtubeLogo,
            width: _appLogoSize.width,
            height: _appLogoSize.height,
          ),
          _appLogoBottomSpacing,
          Form(
            child: Column(
              children: [
                AppTextFormField(
                  hintText: AuthenticateStrings.fullName,
                  prefixIcon: SvgPicture.asset(AppAssets.user),
                ),
                _textFieldSpacing,
                AppTextFormField(
                  hintText: AuthenticateStrings.email,
                  prefixIcon: SvgPicture.asset(AppAssets.email),
                ),
                _textFieldSpacing,
                AppTextFormField(
                  hintText: AuthenticateStrings.password,
                  prefixIcon: SvgPicture.asset(AppAssets.lock),
                  isSecureText: true,
                ),
                _textFieldSpacing,
                AppTextFormField(
                  hintText: AuthenticateStrings.repeatPassword,
                  prefixIcon: SvgPicture.asset(AppAssets.lock),
                  isSecureText: true,
                ),
              ],
            ),
          ),
          _loginButtonTopSpacing,
          CommonRoundedButton(
            title: AuthenticateStrings.signUp,
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, RouteNames.home,
                  (route) => route.settings.name == RouteNames.init);
            },
          ),
          _loginButtonBottomSpacing,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GoogleButton(
                onTap: () {
                  print('Login with Google');
                },
              ),
              _betweenSocialButtonsSpacing,
              FacebookButton(
                onTap: () {
                  print('Login with Facebook');
                },
              ),
            ],
          ),
          _socialButtonBottomSpacing,
          Text.rich(
            TextSpan(
              text: AuthenticateStrings.haveAccountLabel,
              style: _prefixLoginLinkStyle,
              children: [
                WidgetSpan(
                  child: GestureDetector(
                    child: Text(
                      AuthenticateStrings.logIn,
                      style: _loginLinkStyle,
                    ),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, RouteNames.logIn);
                    },
                  ),
                )
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: _screenBottomSpacing)
        ],
      ),
    );
  }
}
