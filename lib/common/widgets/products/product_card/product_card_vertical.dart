// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/styles/shadows.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ree_cat_house/common/widgets/icons/r_circular_icon.dart';
import 'package:ree_cat_house/common/widgets/images/r_rounded_image.dart';
import 'package:ree_cat_house/common/widgets/texts/product_price_text.dart';
import 'package:ree_cat_house/common/widgets/texts/product_title_text.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class RProductCardVertical extends StatelessWidget {
  const RProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = RHelperFunctions.isDarkMode(context);
    // Container with side paddings, color, edges, radius and shadow.
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [RShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(RSizes.productImageRadius),
          color: dark ? RColors.darkerGrey : RColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, Wishlist Button, Discount Tag
            RRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(RSizes.sm),
              backgroundColor: dark ? RColors.dark : RColors.light,
              child: Stack(
                children: [
                  RRoundedImage(imageUrl: RImages.productImage1, applyImageRadius: true,),
      
                  // --- Sale Tag
                  Positioned(
                    top: 12,
                    child: RRoundedContainer(
                      radius: RSizes.sm,
                      backgroundColor: RColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: RSizes.sm, vertical: RSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: RColors.black)),
                    ),
                  ),
      
                  // --- Favourite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: RCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  ),
                ],
              ),
            ),
          
            // TRoundedContainer
            const SizedBox(height: RSizes.spaceBtwItems / 2),
      
            // --- Details
            Padding(
              padding: const EdgeInsets.only(left: RSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const RProductTitleText(title: 'Buzz Beyond Cat Food', smallSize: true),
                  const SizedBox(height: RSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        'Buzz',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: RSizes.xs),
                      const Icon(Iconsax.verify5, color: RColors.primary, size: RSizes.iconXs),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price
                      const RProductPriceText(price: '109/119',),
      
                      // Container
                      Container(
                        decoration: const BoxDecoration(
                          color: RColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(RSizes.cardRadiusMd),
                            bottomRight: Radius.circular(RSizes.productImageRadius),
                          ),
                        ),
                        child: SizedBox(
                          width: RSizes.iconLg * 1.2,
                          height: RSizes.iconLg * 1.2,
                          child: const Center(child: Icon(Iconsax.add, color: RColors.white)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
