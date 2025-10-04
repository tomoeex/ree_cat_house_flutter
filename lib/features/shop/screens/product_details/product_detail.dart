import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ree_cat_house/common/widgets/icons/r_circular_icon.dart';
import 'package:ree_cat_house/common/widgets/images/r_rounded_image.dart';
import 'package:ree_cat_house/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ree_cat_house/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ree_cat_house/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Scaffold(
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
                  
                  /// -- Checkout Button
                  /// -- Description
                  /// -- Reviews
                ],
              ), 
            )
          ],
        ),
      ),
    );
  }
}
