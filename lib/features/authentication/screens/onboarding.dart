import 'package:flutter/material.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
            PageView(
              children: [
                // Onboarding Page 1
              Column(
                children: [
                  Image(
                    width: RHelperFunctions.screenWidth() * 0.8,
                    height: RHelperFunctions.screenHeight() * 0.6,
                    image: AssetImage(RImages.onBoardingImage1),
                  ),
                  const SizedBox(height: RSizes.spaceBtwItems),
                  Text(
                    RTexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: RSizes.spaceBtwItems),
                  Text(
                    RTexts.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

                // Onboarding Page 2
              Column(
                children: [
                  Image(
                    width: RHelperFunctions.screenWidth() * 0.8,
                    height: RHelperFunctions.screenHeight() * 0.6,
                    image: AssetImage(RImages.onBoardingImage2),
                  ),
                  const SizedBox(height: RSizes.spaceBtwItems),
                  Text(
                    RTexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: RSizes.spaceBtwItems),
                  Text(
                    RTexts.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              
                // Onboarding Page 3
              Column(
                children: [
                  Image(
                    width: RHelperFunctions.screenWidth() * 0.8,
                    height: RHelperFunctions.screenHeight() * 0.6,
                    image: AssetImage(RImages.onBoardingImage3),
                  ),
                  const SizedBox(height: RSizes.spaceBtwItems),
                  Text(
                    RTexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: RSizes.spaceBtwItems),
                  Text(
                    RTexts.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              ],
            )
          // Skip Button

          // Dot Navigation Smooth Page Indicator

          // Circular Next Button
        ],
      ),
    );
  }
}