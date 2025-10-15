import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/images/r_circular_image.dart';
import 'package:ree_cat_house/common/widgets/shimmers/shimmer.dart';
import 'package:ree_cat_house/common/widgets/texts/section_heading.dart';
import 'package:ree_cat_house/features/personalization/controllers/user_controller.dart';
import 'package:ree_cat_house/features/personalization/screens/profile/widgets/change_name.dart';
import 'package:ree_cat_house/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;

    return Scaffold(
      appBar: const RAppBar(showBackArrow: true, title: Text('Profile')),

      /// --- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Obx(() {
                      final networkImage = controller.user.value.profilePicture;
                      final image = networkImage.isNotEmpty ? networkImage : RImages.user;
                      return controller.imageUploading.value
                          ? const RShimmerEffect(width: 80, height: 80, radius: 80)
                          : RCircularImage(image: image, width: 80, height: 80, isNetworkImage: networkImage.isNotEmpty);
                    }),
                    TextButton(onPressed: () => controller.uploadUserProfilePicture(), child: const Text('Change Profile Picture')
                    ),
                  ],
                ),
              ),
              /// Details
              const SizedBox(height: RSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: RSizes.spaceBtwItems),
              const RSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: RSizes.spaceBtwItems),

              RProfileMenu( title: 'Name', value: controller.user.value.fullName, onPressed: () => Get.to(() => const ChangeName())),
              RProfileMenu(title: 'Username', value: controller.user.value.username, onPressed: () {}),

              const SizedBox(height: RSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: RSizes.spaceBtwItems),

              /// Heading Personal Info
              const RSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: RSizes.spaceBtwItems),

              RProfileMenu(title: 'User ID', value: controller.user.value.id, onPressed: () {}),
              RProfileMenu(title: 'E-mail', value: controller.user.value.email, onPressed: () {}),
              RProfileMenu(title: 'Phone Number', value: controller.user.value.phoneNumber, onPressed: () {}),
              RProfileMenu(title: 'Gender', value: 'Female', onPressed: () {}),
              RProfileMenu(title: 'Date of Birth', value: '9 Nov, 2005', onPressed: () {}),
              const Divider(),
              const SizedBox(height: RSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () => controller.deleteAccountWarningPopup(), 
                  child: const Text('Close Account', style: TextStyle(color: Colors.red),)
                  ),
              )
            ],
          ),
        ),
      )
    );
  }
}
