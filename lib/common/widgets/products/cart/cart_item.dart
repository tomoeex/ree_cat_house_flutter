import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/images/r_rounded_image.dart';
import 'package:ree_cat_house/common/widgets/texts/product_title_text.dart';
import 'package:ree_cat_house/common/widgets/texts/r_brand_title_text_with_verified_icon.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';



class RCartItem extends StatelessWidget {
  const RCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
            /// Image
            RRoundedImage(
                imageUrl: RImages.productImage10,
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(RSizes.sm),
                backgroundColor: RHelperFunctions.isDarkMode(context) ? RColors.darkGrey : RColors.light,
                ),
                const SizedBox(width: RSizes.spaceBtwItems),
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        const RBrandTitleWithVerifiedIcon(title: 'Buzz'),
                        const RProductTitleText(
                            title: 'Cat Dry Food', maxLines: 1),
    
                        Text.rich(
                            TextSpan(
                            children: [
                                TextSpan(
                                    text: 'Color ',
                                    style: Theme.of(context).textTheme.bodySmall),
                                TextSpan(
                                    text: 'Green ',
                                    style: Theme.of(context).textTheme.bodyLarge),
                                TextSpan(
                                    text: 'Size ',
                                    style: Theme.of(context).textTheme.bodySmall),
                                TextSpan(
                                    text: 'UK 08 ',
                                    style: Theme.of(context).textTheme.bodyLarge),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ],
        );
  }
}