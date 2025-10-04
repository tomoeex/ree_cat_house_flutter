import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/chips/choice_chip.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ree_cat_house/common/widgets/texts/product_price_text.dart';
import 'package:ree_cat_house/common/widgets/texts/product_title_text.dart';
import 'package:ree_cat_house/common/widgets/texts/section_heading.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';


class RProductAttributes extends StatelessWidget {
  const RProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        RRoundedContainer(
          padding: const EdgeInsets.all(RSizes.md),
          backgroundColor: dark ? RColors.dark : RColors.grey,
          child:  Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  const RSectionHeading(title: 'Variation', showActionButton: false),
                  const SizedBox(width: RSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const RProductTitleText(title: 'Price : ', smallSize: true),

                          /// Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ), // Text
                          const SizedBox(width: RSizes.spaceBtwItems),

                          /// Sale Price
                          const RProductPriceText(price: '20'),
                        ],
                      ), // Row

                      /// Stock
                      Row(
                        children: [
                          const RProductTitleText(title: 'Stock : ', smallSize: true),
                          Text(' In Stock', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
                /// Variation Description
                const RProductTitleText(
                  title: 'This is the Description of the Product and it can go up to max 4 lines.',
                  smallSize: true,
                  maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: RSizes.spaceBtwItems),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RSectionHeading(title: 'Colors'),
            const SizedBox(height: RSizes.spaceBtwItems / 2),
                Wrap(
                  spacing: 8,
                  children: [
                    RChoiceChip(text: 'Green', selected: false, onSelected: (value){}),
                    RChoiceChip(text: 'Blue', selected: true, onSelected: (value){}),
                    RChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RSectionHeading(title: 'Size', showActionButton: false),
                const SizedBox(height: RSizes.spaceBtwItems / 2),
                Wrap(
                  spacing: 8,
                  children: [
                    RChoiceChip(text: 'EU 34', selected: true, onSelected: (value){}),
                    RChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}),
                    RChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}