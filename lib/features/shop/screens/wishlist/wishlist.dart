import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/icons/r_circular_icon.dart';
import 'package:ree_cat_house/common/widgets/layouts/grid_layout.dart';
import 'package:ree_cat_house/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:ree_cat_house/features/shop/screens/home/home.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';


class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: RAppBar(
            title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
            actions: [
                RCircularIcon(icon: Iconsax.add,onPressed: () => Get.to(const HomeScreen()))
            ],
        ),
        body:  SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(RSizes.defaultSpace),
                child: Column(
                    children: [
                        RGridLayout(itemCount: 6, itemBuilder: (_, index) => const RProductCardVertical())
                    ],
                ),
                ),
        ),
    );
  }
}