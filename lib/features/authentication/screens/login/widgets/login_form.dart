import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ree_cat_house/features/authentication/screens/signup/signup.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';

class RLoginForm extends StatelessWidget {
  const RLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
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
              TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(RTexts.forgetPassword)),
            ],
          ),
    
          const SizedBox(height: RSizes.spaceBtwSections),
    
          // Sign In Button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(RTexts.signIn))),
          const SizedBox(height: RSizes.spaceBtwItems),
          // Create Account Button
          SizedBox(
            width: double.infinity, 
            child: OutlinedButton(onPressed: () => Get.to(() => SignupScreen()), child: const Text(RTexts.createAccount))),
        ],
      ),
    ),
                  );
  }
}