// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ree_cat_house/common/widgets/icons/r_circular_icon.dart';
import 'package:ree_cat_house/common/widgets/images/r_rounded_image.dart';
import 'package:ree_cat_house/common/widgets/texts/product_price_text.dart';
import 'package:ree_cat_house/common/widgets/texts/product_title_text.dart';
import 'package:ree_cat_house/common/widgets/texts/r_brand_title_text_with_verified_icon.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class RProductCardHorizontal extends StatelessWidget {
  const RProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
      // boxShadow: [RShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(RSizes.productImageRadius),
        color: dark ? RColors.darkGrey : RColors.softGrey,
      ),
      child: Row(
        children: [
          /// --- Thumbnail (ซ้าย)
          RRoundedContainer(
            height: 120,
            width: 120,
            padding: const EdgeInsets.all(RSizes.sm),
            backgroundColor: dark ? RColors.dark : RColors.light,
            child: Stack(
              children: [
                /// -- Product Image
                const RRoundedImage(
                  imageUrl: RImages.productImage1,
                  applyImageRadius: true,
                ),

                /// -- Sale Tag
                Positioned(
                  top: 8,
                  left: 8,
                  child: RRoundedContainer(
                    radius: RSizes.sm,
                    backgroundColor: RColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: RSizes.sm, vertical: RSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: RColors.black),
                    ),
                  ),
                ),

                /// -- Favourite Icon
                const Positioned(
                  top: 0,
                  right: 0,
                  child: RCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: RSizes.sm, left: RSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RProductTitleText(title: 'Green Nike Half Sleeves Shirt', smallSize: true),
                      SizedBox(height: RSizes.spaceBtwItems / 2),
                      RBrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ), 
                  const Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Pricing
                    Flexible(child: const RProductPriceText(price: '256.0 - 555.0')),

                    // Add to cart
                    Container(
                        decoration:  const BoxDecoration(
                          color: RColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(RSizes.cardRadiusMd),
                            bottomRight: Radius.circular(RSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: RSizes.iconLg * 1.2,
                          height: RSizes.iconLg * 1.2,
                          child: Center(child: Icon(Iconsax.add, color: RColors.white)),
                        ),
                      ),

                  ],
                ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
