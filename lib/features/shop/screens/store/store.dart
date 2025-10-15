import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/appbar/tabbar.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ree_cat_house/common/widgets/layouts/grid_layout.dart';
import 'package:ree_cat_house/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ree_cat_house/common/widgets/brand/brand_card.dart';
import 'package:ree_cat_house/common/widgets/texts/section_heading.dart';
import 'package:ree_cat_house/features/shop/controllers/category_controller.dart';
import 'package:ree_cat_house/features/shop/screens/brand/all_brand.dart';

import 'package:ree_cat_house/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';

import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final categories = CategoryController.instance.featuredCategories;

    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: RAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            RCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: RHelperFunctions.isDarkMode(context) ? RColors.black : RColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.all(RSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        // search bar
                      const SizedBox(height: RSizes.spaceBtwItems),
                      const RSearchContainer(
                        text: 'Search in Store' ,showBorder: true, showBackground: false,padding: EdgeInsets.zero, ),
                      const  SizedBox(height: RSizes.spaceBtwSections),
      
                        ///Featured Brands
                      RSectionHeading (title: 'Featured Brands', onPressed: () => Get.to(() => const AllBrandsScreen())),
                      const SizedBox (height: RSizes.spaceBtwItems / 1.5),
                      /// Brands GRID
                      RGridLayout(itemCount: 4,mainAxisExtent: 80, itemBuilder: (_, index) {
                              return GestureDetector(
                              onTap: (){},
                              child: const RBrandCard(showBorder: false),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                // /// Tabs -- Tutorial
                bottom: TabBar(tabs: categories.map((category) => Tab(child: Text(category.name))).toList()),
              ),
            ];
          },
      
          body: TabBarView(
            children: categories.map((category) => RCategoryTab(category: category)).toList()
          ),
        ),
      ),
    );
  }
}
