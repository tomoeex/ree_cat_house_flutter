import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/layouts/grid_layout.dart';
import 'package:ree_cat_house/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';


class RSortableProducts extends StatelessWidget {
  const RSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value){},
          items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity']
            .map((option) => DropdownMenuItem(value: option, child: Text(option)))
            .toList(),
        ),
        const SizedBox (height: RSizes.spaceBtwSections),
        /// Products
        RGridLayout(itemCount: 4, itemBuilder: (_, index) => const RProductCardVertical()),
      ],
    );
  }
}