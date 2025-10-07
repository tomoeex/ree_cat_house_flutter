import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/brand/brand_card.dart';
import 'package:ree_cat_house/common/widgets/layouts/grid_layout.dart';
import 'package:ree_cat_house/common/widgets/texts/section_heading.dart';
import 'package:ree_cat_house/features/shop/screens/brand/brand_products.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: RAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              // Heading
              const RSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: RSizes.spaceBtwItems),

              // -- Brands
              RGridLayout(
                itemCount: 10,
                mainAxisExtent: 80, 
                itemBuilder: (context, index) => RBrandCard(
                  showBorder: true, onTap: () => Get.to(
                    () => const BrandProducts())
                    )
              ),
            ],
          ),
        ), 
      ), 
    );
  }
}