import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/brand/brand_card.dart';
import 'package:ree_cat_house/common/widgets/products/sortable/sortable_products.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';


class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: RAppBar(title: Text('Nike'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              // Brand Detail
              RBrandCard(showBorder: true),
              SizedBox(height: RSizes.spaceBtwSections),

              RSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}