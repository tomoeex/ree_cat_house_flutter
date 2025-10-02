// ignore_for_file: deprecated_member_use
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ree_cat_house/common/widgets/image_text_widgets/vertical_imge_text.dart';
import 'package:ree_cat_house/common/widgets/images/r_rounded_image.dart';
import 'package:ree_cat_house/common/widgets/layouts/grid_layout.dart';
import 'package:ree_cat_house/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ree_cat_house/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:ree_cat_house/common/widgets/texts/section_heading.dart';
import 'package:ree_cat_house/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ree_cat_house/features/shop/screens/home/widgets/home_categories.dart' hide RGridLayout;
import 'package:ree_cat_house/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';
import 'package:ree_cat_house/util/device/device_utillity.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header Tutoria
            RPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar Tutorial
                  const RHomeAppBar(),
                  const SizedBox(height: RSizes.spaceBtwSections),
                  ///--Searchbar Tutorial
                  const RSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: RSizes.spaceBtwSections),

                  /// Categories Tutorial 
                  Padding(
                    padding: const EdgeInsets.only(left: RSizes.defaultSpace),
                    child: Column(
                      children: [
                        // -- Heading
                        const RSectionHeading(title: 'Popular Categories',showActionButton: false, textColor: Colors.white),
                        const SizedBox(height: RSizes.spaceBtwItems),
                        
                        // Categories
                        const  RHomeCategories() 
                      ],
                    ),
                  ) 
                ],
              ),
            ),

            // Body -- Tutorial                       
            Padding(
              padding: const EdgeInsets.all(RSizes.defaultSpace),
              child: Column(
                children: [
                RPromoSlider(banners: [
                RImages.promoBanners1, RImages.promoBanners2, RImages.promoBanners3,
                RImages.promoBanners4, RImages.promoBanners5, RImages.promoBanners6,]),
                const SizedBox(height: RSizes.spaceBtwSections),

                  // --- Popular Products -- Tutorial [Section # 3, Video # 7]
                  RGridLayout(itemCount: 2, itemBuilder: (_ , index) => const RProductCardVertical()), 
                ],
              )
              
            ),
          ],
        ),
      ),
    );
  }
}
