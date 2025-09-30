import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/device/device_utillity.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';


class RSearchContainer extends StatelessWidget {
  const RSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: RSizes.defaultSpace),
      child: Container(
        width: RDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(RSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? (dark ? RColors.dark : RColors.light)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(RSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: RColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: RColors.darkGrey),
            const SizedBox(width: RSizes.spaceBtwItems),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}