import 'package:flutter/material.dart';
import 'package:ree_cat_house/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/device/device_utillity.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = RHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: RDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: RSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick, // PageController
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? RColors.light : RColors.dark,
          dotHeight: 6),
      ),
    );
  }
}
