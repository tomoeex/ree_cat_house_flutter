// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ree_cat_house/common/widgets/layouts/grid_layout.dart';
import 'package:ree_cat_house/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:ree_cat_house/common/widgets/texts/section_heading.dart';
import 'package:ree_cat_house/features/shop/screens/all_products/all_products.dart';
import 'package:ree_cat_house/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ree_cat_house/features/shop/screens/home/widgets/home_categories.dart' hide RGridLayout;
import 'package:ree_cat_house/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';

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
                  ),
                  const SizedBox(height: RSizes.spaceBtwSections),
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
                  // heading
                RSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProducts())),
                const SizedBox(height: RSizes.spaceBtwItems),
                  // --- Popular Products -- Tutorial [Section # 3, Video # 7]
                  RGridLayout(itemCount: 4, itemBuilder: (_ , index) => const RProductCardVertical()), 
                ],
              )
              
            ),
          ],
        ),
      ),
    );
  }
}
