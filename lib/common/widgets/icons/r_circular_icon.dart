// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';


/// A custom Circular Icon widget with a background color.
///
/// Properties are:
/// Container [width], [height], & [backgroundColor].
///
/// Icon's [size], [color] & [onPressed]
class RCircularIcon extends StatelessWidget {
  const RCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = RSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });

  final double? width;
  final double? height;
  final double size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : RHelperFunctions.isDarkMode(context)
                ? RColors.black.withOpacity(0.9)
                : RColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ), // BoxDecoration

      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    ); // Container
  }
}