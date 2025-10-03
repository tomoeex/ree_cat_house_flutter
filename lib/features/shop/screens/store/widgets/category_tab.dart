import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/brand/brand_show_case.dart';
import 'package:ree_cat_house/common/widgets/layouts/grid_layout.dart';
import 'package:ree_cat_house/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:ree_cat_house/common/widgets/texts/section_heading.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';


class RCategoryTab extends StatelessWidget {
  const RCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:[ Padding(
        padding: EdgeInsets.all(RSizes.defaultSpace),
        child: Column(
          children: [
            /// -- Brands
            const RBrandShowcase(images: [RImages.productImage3, RImages.productImage2, RImages.productImage1]),
            const RBrandShowcase(images: [RImages.productImage3, RImages.productImage2, RImages.productImage1]),
            const SizedBox(height: RSizes.spaceBtwItems),
            /// -- Products
            RSectionHeading(title: 'You might like', onPressed: (){}),
            const SizedBox(height: RSizes.spaceBtwItems),
            
            RGridLayout(itemCount: 4, itemBuilder: (_, index) => const RProductCardVertical()),
            const SizedBox(height: RSizes.spaceBtwSections),
          ],
        ), 
      ),
      ]
    ); 
  }
}