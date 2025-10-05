import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/products/cart/add_remove_button.dart';
import 'package:ree_cat_house/common/widgets/products/cart/cart_item.dart';
import 'package:ree_cat_house/common/widgets/texts/product_price_text.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';

class RCartItems extends StatelessWidget {
  const RCartItems({
    super.key,  this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemCount: 2,
        separatorBuilder: (_, __) => const SizedBox(height: RSizes.spaceBtwSections),
        itemBuilder: (_, index) => Column(
            children: [
                const  RCartItem(),
                if (showAddRemoveButtons) const SizedBox(height: RSizes.spaceBtwItems),
                    
                    // Add if (showAddRemoveButtons)
                    if (showAddRemoveButtons)
                    const  Row(
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
        );
  }
}