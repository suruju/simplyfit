import 'package:flutter/material.dart';
import 'package:getfit/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:getfit/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: TextButton(
          onPressed: () {
            OnBoardingController.instance.skipPage();
          },
          child: Text('Skip')),
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
    );
  }
}
