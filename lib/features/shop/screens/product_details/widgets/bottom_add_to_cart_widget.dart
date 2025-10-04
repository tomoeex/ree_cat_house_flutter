import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/icons/r_circular_icon.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class RBottomAddToCart extends StatelessWidget {
  const RBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: RSizes.defaultSpace,
        vertical: RSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? RColors.darkerGrey : RColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(RSizes.cardRadiusLg),
          topRight: Radius.circular(RSizes.cardRadiusLg),
        ),
      ),

      /// แถวล่างสุดของหน้า Product (ปุ่ม Add to Cart + ปุ่มเพิ่ม/ลดจำนวน)
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// ปุ่มเพิ่ม-ลดจำนวนสินค้า
          Row(
            children: [
              const RCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: RColors.darkGrey,
                width: 40,
                height: 40,
                color: RColors.white,
              ),
              const SizedBox(width: RSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: RSizes.spaceBtwItems),
              const RCircularIcon(
                icon: Iconsax.add,
                backgroundColor: RColors.black,
                width: 40,
                height: 40,
                color: RColors.white,
              ),
            ],
          ),

          /// ปุ่ม Add to Cart
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(RSizes.md),
              backgroundColor: RColors.black,
              side: const BorderSide(color: RColors.black),
            ),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
