import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ree_cat_house/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ree_cat_house/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ree_cat_house/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ree_cat_house/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());


    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                // Onboarding Page 1
                OnboardingPage(
                  image: RImages.onBoardingImage1, 
                  title: RTexts.onboardingTitle1, 
                  subtitle: RTexts.onboardingSubTitle1
                  ),
                  // Onboarding Page 2
                OnboardingPage(
                  image: RImages.onBoardingImage2, 
                  title: RTexts.onboardingTitle2, 
                  subtitle: RTexts.onboardingSubTitle2
                  ),
                  // Onboarding Page 3
                OnboardingPage(
                  image: RImages.onBoardingImage3, 
                  title: RTexts.onboardingTitle3, 
                  subtitle: RTexts.onboardingSubTitle3
                  ),
              ],
            ),
          
          // Skip Button
          const OnboardingSkip(),

          // Dot Navigation Smooth Page Indicator 
          const OnboardingDotNavigation(),

          // Circular Button
          OnboardingNextButton(), // Positioned
        ],
      ),
    );
  }
}

