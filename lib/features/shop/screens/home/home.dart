// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ree_cat_house/common/widgets/image_text_widgets/vertical_imge_text.dart';
import 'package:ree_cat_house/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ree_cat_house/common/widgets/texts/section_heading.dart';
import 'package:ree_cat_house/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ree_cat_house/features/shop/screens/home/widgets/home_categories.dart';
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

          ],
        ),
      ),
    );
  }
}
