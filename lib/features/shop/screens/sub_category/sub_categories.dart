import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/images/r_rounded_image.dart';
import 'package:ree_cat_house/common/widgets/products/product_card/product_card_horizontal.dart';
import 'package:ree_cat_house/common/widgets/texts/section_heading.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';


class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const RRoundedImage(width: double.infinity, imageUrl: RImages.promoBanners4, applyImageRadius: true),
              const SizedBox(height: RSizes.spaceBtwSections),

              /// Sub-Categories
              Column(
                children: [
                  /// Heading
                  RSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: RSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: RSizes.spaceBtwItems),
                      itemBuilder: (context, index) => const RProductCardHorizontal()
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}