import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ree_cat_house/common/widgets/list_tiles/srttings_menu_tile.dart';
import 'package:ree_cat_house/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:ree_cat_house/common/widgets/texts/section_heading.dart';
import 'package:ree_cat_house/data/repositories/authentication/authentication_repository.dart';
import 'package:ree_cat_house/features/authentication/screens/login/login.dart';
import 'package:ree_cat_house/features/personalization/screens/address/address.dart';
import 'package:ree_cat_house/features/personalization/screens/profile/profile.dart';
import 'package:ree_cat_house/features/shop/screens/cart/cart.dart';
import 'package:ree_cat_house/features/shop/screens/order/order.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --- ส่วนหัว (Header)
            RPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- App Bar ด้านบน
                  RAppBar(
                    title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: RColors.white),
                    ),
                  ),
                  /// -- โปรไฟล์ผู้ใช้
                  RUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),
                  const SizedBox(height: RSizes.spaceBtwSections),
                ],
              ),
            ),

            /// --- ส่วนเนื้อหา (Body)
            Padding(
              padding: const EdgeInsets.all(RSizes.defaultSpace),
              child: Column(
                children: [
                  /// --- หมวด Account Settings
                  const RSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: RSizes.spaceBtwItems),

                  /// --- เมนูต่าง ๆ ของผู้ใช้
                  RSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ), 

                  RSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subTitle: 'Add, remove products and move to checkout',
                      onTap: () => Get.to(() => const CartScreen())),
                  RSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subTitle: 'In-progress and Completed Orders',
                      onTap: () => Get.to(() => const OrderScreen())),
                  RSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subTitle: 'Withdraw balance to registered bank account',
                      onTap: () {}),
                  RSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subTitle: 'List of all the discounted coupons',
                      onTap: () {}),
                  RSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subTitle: 'Set any kind of notification message',
                      onTap: () {}),
                  RSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage and connected accounts',
                      onTap: () {}),

                  /// --- หมวด App Settings
                  const SizedBox(height: RSizes.spaceBtwSections),
                  const RSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: RSizes.spaceBtwItems),

                  RSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload Data to your Cloud Firebase',
                      onTap: () {}),
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

                const SizedBox(height: RSizes.spaceBtwSections),
                
                  /// ✅ ปุ่ม Logout สไตล์มินิมอล
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.grey),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () async {
                        // ยืนยันก่อนออก
                        final confirm = await showDialog<bool>(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: const Text('Logout'),
                            content: const Text('Are you sure you want to log out?'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(ctx, false),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(ctx, true),
                                child: const Text(
                                  'Yes, Logout',
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                              ),
                            ],
                          ),
                        );

                        if (confirm ?? false) {
                          await AuthenticationRepository.instance.logout();
                          Get.offAll(() => const LoginScreen());
                        }
                      },
                      child: Text('Logout',style: TextStyle(
                        fontWeight: FontWeight.w600, 
                        fontSize: 16, 
                        color: dark ? RColors.light : RColors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}