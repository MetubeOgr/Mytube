import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset(
              AppAssets.youtubeBrandName,
              width: 90,
              height: 90,
            ),
            const Spacer(),
            Text(
              AppStrings.titleIntro,
              textAlign: TextAlign.center,
              style: _theme.displayLarge,
            ),
            const SizedBox(height: 27),
            Text(
              AppStrings.subTitleIntro,
              textAlign: TextAlign.center,
              style: _theme.bodySmall?.apply(
                color: AppColor.grey60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(34, 108, 34, 114),
              child: Row(
                children: [
                  CommonRoundedButton(
                    title: AppStrings.logIn,
                    minWidth: 150,
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
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                text: AppStrings.dontHaveAccount,
                style: _theme.bodySmall?.copyWith(color: AppColor.grey30),
                children: [
                  WidgetSpan(
                    child: GestureDetector(
                      child: Text(
                        AppStrings.signUp,
                        style: _theme.titleMedium
                            ?.copyWith(color: AppColor.grey60),
                      ),
                      onTap: () {
                        print('Sign up');
                      },
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
