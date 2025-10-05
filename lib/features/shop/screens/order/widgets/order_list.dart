import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class ROrderListItems extends StatelessWidget {
  const ROrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);

    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: RSizes.spaceBtwItems),
      itemBuilder:  (_, index) => RRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(RSizes.md),
        backgroundColor: dark ? RColors.dark : RColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// --- Row 1 : Status + Date + Arrow
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// 1 - Icon (ship)
                const Icon(Iconsax.ship),
      
                const SizedBox(width: RSizes.spaceBtwItems / 2),
      
                /// 2 - Status & Date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: RColors.primary, fontWeightDelta: 1),
                      ),
                      Text(
                        '07 Nov 2024',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
      
                /// 3 - Arrow icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.arrow_right_34),
                  iconSize: RSizes.iconSm,
                ),
              ],
            ),
      
            const SizedBox(height: RSizes.spaceBtwItems),
      
            /// --- Row 2 : Order ID + Shipping Date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Left side - Order ID
                Row(
                  children: [
                    const Icon(Iconsax.tag),
                    const SizedBox(width: RSizes.spaceBtwItems / 2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .apply(color: Colors.grey),
                        ),
                        Text(
                          '[#256f2]',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
      
                /// Right side - Shipping Date
                Row(
                  children: [
                    const Icon(Iconsax.calendar),
                    const SizedBox(width: RSizes.spaceBtwItems / 2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shipping Date',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .apply(color: Colors.grey),
                        ),
                        Text(
                          '03 Feb 2025',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
