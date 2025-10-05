import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/icons/r_circular_icon.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';



class RProductQuantityWithAddRemoveButton extends StatelessWidget {
  const RProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
        RCircularIcon(
        icon: Iconsax.minus,
        width: 32,
        height: 32,
        size: RSizes.md,
        color: RHelperFunctions.isDarkMode(context) ? RColors.white : RColors.black,
        backgroundColor: RHelperFunctions.isDarkMode(context) ? RColors.darkGrey : RColors.light,
        ),
        const SizedBox(width: RSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: RSizes.spaceBtwItems),
    
        const RCircularIcon(
            icon: Iconsax.add,
            width: 32,
            height: 32,
            size: RSizes.md,
            color: RColors.white,
            backgroundColor: RColors.primary,
            ),
        ],
    );
  }
}
