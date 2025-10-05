import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/layouts/grid_layout.dart';
import 'package:ree_cat_house/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:ree_cat_house/common/widgets/products/sortable/sortable_products.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppBar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: RSortableProducts(),
        ),
      ),
    );
  }
}
