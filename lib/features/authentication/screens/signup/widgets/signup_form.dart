import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/features/authentication/controllers/signup/signup_controller.dart';
import 'package:ree_cat_house/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';

import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';
import 'package:ree_cat_house/util/validators/validation.dart';


class RSignupForm extends StatelessWidget {
  const RSignupForm({
    super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) => RValidator.validateEmptyText('First Name', value),
                expands: false,
                decoration: const InputDecoration(labelText: RTexts.firstName, prefixIcon: Icon(Iconsax.user)),
              ),
            ),
    
            const SizedBox(height: RSizes.spaceBtwInputFields),
    
            Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) => RValidator.validateEmptyText('Last Name', value),
                expands: false,
                decoration: const InputDecoration(labelText: RTexts.lastName, prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(height: RSizes.spaceBtwInputFields,),
    
        // Username
        TextFormField(
          controller: controller.username,
          validator: (value) => RValidator.validateEmptyText('Username', value),
          expands: false,
          decoration: const InputDecoration(labelText: RTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: RSizes.spaceBtwInputFields),
    
        // Email
        TextFormField(
          controller: controller.email,
          validator: (value) => RValidator.validateEmail(value),
          decoration: const InputDecoration(labelText: RTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: RSizes.spaceBtwInputFields),
    
        // Phone Number
        TextFormField(
          controller: controller.phoneNumber,
          validator: (value) => RValidator.validatePhoneNumber(value),
          decoration: const InputDecoration(labelText: RTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
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
        const SizedBox(height: RSizes.spaceBtwSections),
    
        // Terms & Conditions Checkbox
        const RTermsAndConditionCheckbox(),
        const SizedBox(height: RSizes.spaceBtwSections),
    
        // Sign Up Button
        SizedBox(
          width: double.infinity, 
          child: ElevatedButton(onPressed: () => controller.signup() , child: const Text(RTexts.createAccount))
        ),
      ],
    ),
                  );
  }
}

