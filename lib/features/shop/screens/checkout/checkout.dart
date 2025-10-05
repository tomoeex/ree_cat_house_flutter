// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ree_cat_house/common/widgets/products/cart/coupon_widget.dart';
import 'package:ree_cat_house/common/widgets/success_screen/success_screen.dart';
import 'package:ree_cat_house/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ree_cat_house/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ree_cat_house/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ree_cat_house/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ree_cat_house/navigation_menu.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: RAppBar(showBackArrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall)),
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              /// Items in Cart
            const  RCartItems(showAddRemoveButtons: false),
            const  SizedBox(height: RSizes.spaceBtwSections),

              // Coupon TextField
            const  RCouponCode(),
            const  SizedBox(height: RSizes.spaceBtwSections),
              RRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(RSizes.md),
                backgroundColor: dark ? RColors.black : RColors.white,
                child: Column(
                  children: [

                    ///Pricing
                    RBillingAmountSection(),
                    const SizedBox(height: RSizes.spaceBtwItems),

                    /// Divider
                    const Divider(),
                    const SizedBox(height: RSizes.spaceBtwItems),

                    /// Payment Methods
                    RBillingPaymentSection(),
                    const SizedBox(height: RSizes.spaceBtwItems),
                    /// Address
                    RBillingAddressSection(),
                    const SizedBox(height: RSizes.spaceBtwItems),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
          /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(RSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: RImages.successfulPaymentIcon,
              title: 'Payment Success!',
              subTitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ), 
          ),
          child: const Text('Checkout \$256.0'),
        ), 
      ),
    );
  }
}
