import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/brand/brand_card.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';


class RBrandShowcase extends StatelessWidget {
  const RBrandShowcase({
    super.key, 
    required this.images,
  });

  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return RRoundedContainer(
      showBorder: true,
      borderColor: RColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(RSizes.md),
      margin: const EdgeInsets.only(bottom: RSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brands with Product Count
          const RBrandCard(showBorder: false),
          const SizedBox(height: RSizes.spaceBtwItems),
          /// Brand Top 3 Product Images
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList(), 
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: RRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(RSizes.md),
      margin: const EdgeInsets.only(right: RSizes.sm),
      backgroundColor: RHelperFunctions.isDarkMode(context) ? RColors.darkGrey : RColors.light,
      child:  Image(fit: BoxFit.contain, image: AssetImage(image)),
    ),
  );
}
