import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/features/authentication/controllers/login/login_controller.dart';
import 'package:ree_cat_house/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ree_cat_house/features/authentication/screens/signup/signup.dart';
import 'package:ree_cat_house/navigation_menu.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';
import 'package:ree_cat_house/util/validators/validation.dart';

class RLoginForm extends StatelessWidget {
  const RLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      child: Padding(
      padding: const EdgeInsets.symmetric(vertical: RSizes.spaceBtwSections),
      child: Column(
        children: [
          // Email
          TextFormField(
            controller: controller.email,
            validator: (value) => RValidator.validateEmail(value),
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: RTexts.email),
          ), 
          const SizedBox(height: RSizes.spaceBtwInputFields),
    
          // Password
          Obx(
            () => TextFormField(
              validator: (value) => RValidator.validatePassword(value),
              controller: controller.password,
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: RTexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                  icon:  Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                  ),
              ),
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
                Obx(() => Checkbox(
                  value: controller.rememberMe.value, 
                  onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value)
                  ),
                  const Text(RTexts.rememberMe),
                ],
              ),
    
              // Forget Password
              TextButton(onPressed: () => controller.emailAndPasswordSignIn(), child: const Text(RTexts.forgetPassword)),
            ],
          ),
    
          const SizedBox(height: RSizes.spaceBtwSections),
    
          // Sign In Button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()  => Get.to(() => NavigationMenu()), child: const Text(RTexts.signIn))),
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