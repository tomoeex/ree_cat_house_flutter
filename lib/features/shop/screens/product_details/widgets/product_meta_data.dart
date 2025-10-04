// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ree_cat_house/common/widgets/images/r_circular_image.dart';
import 'package:ree_cat_house/common/widgets/texts/product_price_text.dart';
import 'package:ree_cat_house/common/widgets/texts/product_title_text.dart';
import 'package:ree_cat_house/common/widgets/texts/r_brand_title_text_with_verified_icon.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/enums.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class RProductMetaData extends StatelessWidget {
  const RProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = RHelperFunctions.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            // Sale Tap
            RRoundedContainer(
                    radius: RSizes.sm,
                    backgroundColor: RColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: RSizes.sm, vertical: RSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: RColors.black)),
                  ),
                const SizedBox(width: RSizes.spaceBtwItems),

                // Price
                Text(
                  '\$125',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
                  const SizedBox(width: RSizes.spaceBtwItems),
                  RProductPriceText(price: '95', isLarge: true),
                ],
              ),
              const SizedBox(height: RSizes.spaceBtwItems / 1.5),

              /// Title
              const RProductTitleText(title: 'Cat Dry Food in Bezz'),
              const SizedBox(height: RSizes.spaceBtwItems / 1.5),

              /// Stock Status
              Row(
                children: [
                  const RProductTitleText(title: 'Status'),
                  const SizedBox(width: RSizes.spaceBtwItems),
                  Text(' In Stock', style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
              const SizedBox(height: RSizes.spaceBtwItems / 1.5),

              /// Brand
              Row(
                children: [
                  RCircularImage(
                    image: RImages.dryFoodIcon, 
                    width: 32, 
                    height: 32,
                    overlayColor: darkMode ? RColors.white : RColors.black,
                    
                    ),
                  RBrandTitleWithVerifiedIcon(title: 'Bezz', brandTextSize: TextSizes.medium),
                ],
              ),
      ],
    );
  }
}