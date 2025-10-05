import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/icons/r_circular_icon.dart';
import 'package:ree_cat_house/common/widgets/images/r_rounded_image.dart';
import 'package:ree_cat_house/common/widgets/products/cart/add_remove_button.dart';
import 'package:ree_cat_house/common/widgets/products/cart/cart_item.dart';
import 'package:ree_cat_house/common/widgets/texts/product_price_text.dart';
import 'package:ree_cat_house/common/widgets/texts/product_title_text.dart';
import 'package:ree_cat_house/common/widgets/texts/r_brand_title_text_with_verified_icon.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';


class CartScreen extends StatelessWidget {
    const CartScreen({super.key});

@override
Widget build(BuildContext context) {
    return Scaffold(
    appBar: RAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
        body: Padding(
        padding: const EdgeInsets.all(RSizes.defaultSpace),
            child: ListView.separated(
                shrinkWrap: true,
                itemCount: 10,
                separatorBuilder: (_, __) => const SizedBox(height: RSizes.spaceBtwSections),
                itemBuilder: (_, index) => Column(
                    children: [
                        RCartItem(),
                        const SizedBox(height: RSizes.spaceBtwItems),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Row(
                                    children: [
                                        // Extra Space
                                        SizedBox(width: 70),
        
                                        /// Add Remove Buttons
                                        RProductQuantityWithAddRemoveButton(),
                                    ],
                                ),
                                RProductPriceText(price: '256')
                            ],
                            ),
                        ],
                    ),
                ),
            ),
        bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(RSizes.defaultSpace),
            child: ElevatedButton(onPressed: (){}, child: Text('Checkout \$256.0')),
        ),
        );
    }
}