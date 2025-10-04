import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/images/r_circular_image.dart';
import 'package:ree_cat_house/common/widgets/texts/section_heading.dart';
import 'package:ree_cat_house/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    const RCircularImage(image: RImages.user, width: 80, height: 80),
                    TextButton(onPressed: () {}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: RSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: RSizes.spaceBtwItems),
              const RSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: RSizes.spaceBtwItems),

              RProfileMenu( title: 'Name', value: 'Tomoexx', onPressed: () {},),
              RProfileMenu(title: 'Username', value: 'moonLight', onPressed: () {}),

              const SizedBox(height: RSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: RSizes.spaceBtwItems),

              /// Heading Personal Info
              const RSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: RSizes.spaceBtwItems),

              RProfileMenu(title: 'User ID', value: '45689', onPressed: () {}),
              RProfileMenu(title: 'E-mail', value: 'tomoexx@example.com', onPressed: () {}),
              RProfileMenu(title: 'Phone Number', value: '+66-080-4860144', onPressed: () {}),
              RProfileMenu(title: 'Gender', value: 'Female', onPressed: () {}),
              RProfileMenu(title: 'Date of Birth', value: '9 Nov, 2005', onPressed: () {}),
              const Divider(),
              const SizedBox(height: RSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: (){}, 
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
