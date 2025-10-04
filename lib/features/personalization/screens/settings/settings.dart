import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ree_cat_house/common/widgets/list_tiles/srttings_menu_tile.dart';
import 'package:ree_cat_house/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:ree_cat_house/common/widgets/texts/section_heading.dart';
import 'package:ree_cat_house/features/personalization/screens/profile/profile.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --- Header
            RPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- App Bar
                  RAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: RColors.white))),
                  // const SizedBox(height: RSizes.spaceBtwSections),

                  /// User Profile Card
                  RUserProfileTile(onPressed: ()  => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: RSizes.spaceBtwSections),
                ],
              ), 
            ), 

            /// --- Body
            Padding(
              padding: EdgeInsets.all(RSizes.defaultSpace),
              child: Column(
                children: [
                  /// --- Account Settings
                  const  RSectionHeading(title: 'Account Settings', showActionButton: false,),
                  const  SizedBox(height: RSizes.spaceBtwItems),

                  RSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'Set shopping delivery address',onTap: () {}),
                  RSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout',onTap: () {}),
                  RSettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and Completed Orders',onTap: () {}),
                  RSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account',onTap: () {}),
                  RSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons',onTap: () {}),
                  RSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message',onTap: () {}),
                  RSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts',onTap: () {}),

                  /// --- App Settings
                  SizedBox(height: RSizes.spaceBtwSections),
                  RSectionHeading(title: 'App Settings', showActionButton: false),
                  SizedBox(height: RSizes.spaceBtwItems),
                  RSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase',onTap: () {}),
                  RSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  RSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  RSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
