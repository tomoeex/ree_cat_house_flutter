import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:ree_cat_house/common/widgets/texts/section_heading.dart';
import 'package:ree_cat_house/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ree_cat_house/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ree_cat_house/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ree_cat_house/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ree_cat_house/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ree_cat_house/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';
import 'package:ree_cat_house/util/theme/custom_themes/bottom_sheet_theme.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: RBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            RProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(right: RSizes.defaultSpace, left: RSizes.defaultSpace, bottom: RSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Rating & Share Button
                  RRatingAndShare(),

                  /// -- Price, Title, Stock, & Brand
                  RProductMetaData(),
                  /// -- Attributes
                  RProductAttributes(),
                  const SizedBox(height: RSizes.spaceBtwSections),

                  // --- Checkout Button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: Text('Checkout'))),
                  const SizedBox(height: RSizes.spaceBtwSections),

                  // - Description
                  const RSectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height: RSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a product description for Premium Dry Cat Food. It is rich in protein, helps maintain a shiny coat, and supports healthy digestion for adult cats.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  //- Reviews
                  const Divider(),
                  const SizedBox(height: RSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const RSectionHeading(title: 'Reviews (199)', showActionButton: false),
                      IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18), onPressed: () => Get.to(() => const ProductReviewsScreen())),
                    ],
                  ),
                  const SizedBox(height: RSizes.spaceBtwSections),
                ],
              ), 
            )
          ],
        ),
      ),
    );
  }
}
