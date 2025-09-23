import 'package:flutter/material.dart';
import 'package:ree_cat_house/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/device/device_utillity.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: RDeviceUtils.getAppBarHeight(),
      right: RSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}

