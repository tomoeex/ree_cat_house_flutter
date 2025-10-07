import 'package:flutter/material.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:lottie/lottie.dart';

/// A widget for displaying an animated loading indicator with optional text and action button.
class RAnimationLoaderWidget extends StatelessWidget {
  /// Default constructor for the TAnimationLoaderWidget.

  /// Parameters:
  ///   - text: The text to be displayed below the animation.
  ///   - animation: The path to the Lottie animation file.
  ///   - showAction: Whether to show an action button below the text.
  ///   - actionText: The text to be displayed on the action button.
  ///   - onPressed: Callback function to be executed when the action button is pressed.
  const RAnimationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onPressed,
  });

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onPressed;

@override
Widget build(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(animation, width: MediaQuery.of(context).size.width * 0.8), // Display Lottie animation
        const SizedBox(height: RSizes.defaultSpace),

        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: RSizes.defaultSpace),

        showAction
            ? SizedBox(
                width: 250,
                child: OutlinedButton(
                  onPressed: onPressed,
                  style: OutlinedButton.styleFrom(backgroundColor: RColors.dark),
                  child: Text(
                    actionText!,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(color: RColors.light),
                  ),
                ),
              )
            : const SizedBox(),
        ],
      ),
    );
  }
}