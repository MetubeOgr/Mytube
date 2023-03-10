import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/device_config.dart';
import '../../shared/constants/app_strings.dart';
import '../../shared/styles/themes/colors.dart';
import '../../widgets/app_text_form_field.dart';
import '../../widgets/common_button.dart';
import '../../shared/constants/app_assests.dart';
import '../../widgets/facebook_button.dart';
import '../../widgets/google_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme _textTheme = Theme.of(context).textTheme;
    Size _appLogoSize = Size(0, 0);
    double? _leadingWidth;
    double? _appBarHeight;
    double? _backIconSize;
    var _screenContentPadding;
    var _appLogoTopSpacing;
    var _appLogoBottomSpacing;
    var _emailFieldBottomSpacing;
    var _passwordFieldBottomSpacing;
    var _loginButtonTopSpacing;
    var _loginButtonBottomSpacing;
    var _betweenSocialButtonsSpacing;
    var _socialButtonBottomSpacing;

    switch (DeviceConfig.deviceScreenType) {
      case DeviceScreenType.mobile:
        _screenContentPadding = const EdgeInsets.symmetric(horizontal: 20);
        _appLogoSize = Size(60, 60);
        _appLogoTopSpacing = SizedBox(height: 42);
        _appLogoBottomSpacing = SizedBox(height: 42);
        _leadingWidth = 50;
        _appBarHeight = 50;
        _backIconSize = 25;
        _emailFieldBottomSpacing = const SizedBox(height: 15);
        _passwordFieldBottomSpacing = const SizedBox(height: 20);
        _loginButtonTopSpacing = const SizedBox(height: 29);
        _loginButtonBottomSpacing = const SizedBox(height: 64);
        _betweenSocialButtonsSpacing = const SizedBox(width: 55);
        _socialButtonBottomSpacing = const SizedBox(height: 75);
        break;
      case DeviceScreenType.tablet:
      case DeviceScreenType.desktop:
        _screenContentPadding = const EdgeInsets.symmetric(horizontal: 100);
        _appLogoSize = Size(100, 100);
        _appLogoTopSpacing = SizedBox(height: 100);
        _appLogoBottomSpacing = SizedBox(height: 60);
        _leadingWidth = 100;
        _appBarHeight = 100;
        _backIconSize = 35;
        _emailFieldBottomSpacing = const SizedBox(height: 21);
        _passwordFieldBottomSpacing = const SizedBox(height: 22);
        _loginButtonTopSpacing = const SizedBox(height: 35);
        _loginButtonBottomSpacing = const SizedBox(height: 72);
        _betweenSocialButtonsSpacing = const SizedBox(width: 60);
        _socialButtonBottomSpacing = const SizedBox(height: 82);
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
                  hintText: LoginStrings.email,
                  prefixIcon: SvgPicture.asset(AppAssets.email),
                  onValidate: (String? input) {},
                ),
                _emailFieldBottomSpacing,
                AppTextFormField(
                  hintText: LoginStrings.password,
                  prefixIcon: SvgPicture.asset(AppAssets.lock),
                  isSecureText: true,
                ),
              ],
            ),
          ),
          _passwordFieldBottomSpacing,
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              LoginStrings.forgetPassword,
              style: _textTheme.displaySmall?.apply(color: AppColor.grey30),
            ),
          ),
          _loginButtonTopSpacing,
          CommonRoundedButton(
            title: LoginStrings.logIn,
            onPressed: () {
              print('Login an account');
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
              text: LoginStrings.dontHaveAccount,
              style: _textTheme.bodySmall?.apply(color: AppColor.grey30),
              children: [
                WidgetSpan(
                  child: GestureDetector(
                    child: Text(
                      LoginStrings.signUp,
                      style:
                          _textTheme.titleMedium?.apply(color: AppColor.grey60),
                    ),
                    onTap: () {
                      print('Sign up');
                    },
                  ),
                )
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
