import 'package:flutter/material.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key, required this.image, required this.title, required this.subtitle,
  });
  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(RSizes.defaultSpace),
                child: Column(
                  children: [
                    Image(
                      width: RHelperFunctions.screenWidth() * 0.8,
                      height: RHelperFunctions.screenHeight() * 0.6,
                      image: AssetImage(image),
                    ),
                    const SizedBox(height: RSizes.spaceBtwItems),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: RSizes.spaceBtwItems),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
  }
}