import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mytubr/src/shared/constants/app_strings.dart';
import 'package:mytubr/src/shared/styles/themes/colors.dart';
import 'package:mytubr/src/widgets/app_form_field.dart';
import 'package:mytubr/src/widgets/common_button.dart';

import '../../shared/constants/app_assests.dart';
import '../../widgets/facebook_button.dart';
import '../../widgets/google_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          color: AppColor.icon,
          onPressed: () {},
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          SvgPicture.asset(
            AppAssets.youtubeLogo,
            width: 60,
            height: 60,
          ),
          const SizedBox(height: 42),
          Form(
            child: Column(
              children: [
                AppTextFormField(
                  hintText: AppStrings.email,
                  prefixIcon: SvgPicture.asset(AppAssets.email),
                ),
                const SizedBox(height: 15),
                AppTextFormField(
                  hintText: AppStrings.password,
                  prefixIcon: SvgPicture.asset(AppAssets.lock),
                  suffixIcon: SvgPicture.asset(AppAssets.visible),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              AppStrings.forgetPassword,
              style: _textTheme.displaySmall?.apply(
                color: AppColor.grey30,
              ),
            ),
          ),
          const SizedBox(height: 29),
          CommonRoundedButton(
            title: AppStrings.logIn,
            onPressed: () {
              print('Login an account');
            },
          ),
          const SizedBox(height: 64),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GoogleButton(
                onTap: () {
                  print('Login with Google');
                },
              ),
              const SizedBox(width: 55),
              FacebookButton(
                onTap: () {
                  print('Login with Facebook');
                },
              ),
            ],
          ),
          const SizedBox(height: 75),
          Text.rich(
            TextSpan(
              text: AppStrings.dontHaveAccount,
              style: _textTheme.bodySmall?.apply(color: AppColor.grey30),
              children: [
                WidgetSpan(
                  child: GestureDetector(
                    child: Text(
                      AppStrings.signUp,
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
