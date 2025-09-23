import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/styles/spacing_styles.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: RSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title & sub-Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage( dark ? RImages.lightAppLogo : RImages.darkAppLogo),
                  ),
                  Text(RTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox (height: RSizes.sm),
                  Text (RTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              // Form
                Form(
                  child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: RSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      // Email
                      TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: RTexts.email),
                      ), 
                      const SizedBox(height: RSizes.spaceBtwInputFields),

                      // Password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: RTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: RSizes.spaceBtwInputFields / 2),

                      // Remember Me & Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Remember Me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(RTexts.rememberMe),
                            ],
                          ),

                          // Forget Password
                          TextButton(onPressed: () {}, child: const Text(RTexts.forgetPassword)),
                        ],
                      ),
                      const SizedBox(height: RSizes.spaceBtwSections),

                      // Sign In Button
                      SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(RTexts.signIn))),
                      const SizedBox(height: RSizes.spaceBtwItems),
                      // Create Account Button
                      SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () {}, child: const Text(RTexts.createAccount))),
                      const SizedBox(height: RSizes.spaceBtwSections),
                    ],
                  ),
                ),
              ),
              
              // Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(color: dark ? RColors.darkGrey : RColors.grey, thickness: 0.5, indent: 60, endIndent: 60),
                ],
              ),
              // Footer

            ],
          ),
        ), 
      ), 
    ); 
  }
}