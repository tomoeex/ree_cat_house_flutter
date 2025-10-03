import 'package:flutter/material.dart';

import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ree_cat_house/common/widgets/images/r_circular_image.dart';
import 'package:ree_cat_house/common/widgets/layouts/grid_layout.dart';
import 'package:ree_cat_house/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ree_cat_house/common/widgets/texts/r_brand_title_text_with_verified_icon.dart';
import 'package:ree_cat_house/common/widgets/texts/section_heading.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/enums.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';

import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
                    RSectionHeading (title: 'Featured Brands', onPressed: (){}),
                    const SizedBox (height: RSizes.spaceBtwItems / 1.5),

                    RGridLayout(itemCount: 4,mainAxisExtent: 80, itemBuilder: (_, index) {
                            return GestureDetector(
                            onTap: (){},
                            child: RRoundedContainer(
                              padding: const EdgeInsets.all(RSizes.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  // --- Icon
                                  Flexible(
                                    child: RCircularImage(
                                      isNetworkImage: false,
                                      image: RImages.litterIcon,
                                      backgroundColor: Colors.transparent,
                                      overlayColor: RHelperFunctions.isDarkMode(context) ? RColors.white : RColors.black,
                                    ),
                                  ),
                                  const SizedBox (width: RSizes.spaceBtwItems / 1.5),
                            
                                  // --- Text
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const RBrandTitleWithVerifiedIcon(title: 'Bezz', brandTextSize: TextSizes.large),
                                        Text(
                                          '256 products with asjbsd sj',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context).textTheme.labelMedium,
                                      ),
                                    ],                                 ),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },

        // Body หลังจาก Scroll ลงมา
        body: Container(),
      ),
    );
  }
}