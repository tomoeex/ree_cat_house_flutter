import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/features/authentication/screens/signup/verify_email.dart';
import 'package:ree_cat_house/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';

import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';


class RSignupForm extends StatelessWidget {
  const RSignupForm({
    super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: RTexts.firstName, prefixIcon: Icon(Iconsax.user)),
              ),
            ),
    
            const SizedBox(height: RSizes.spaceBtwInputFields),
    
            Expanded(
                child: TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: RTexts.lastName, prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(height: RSizes.spaceBtwInputFields,),
    
        // Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: RTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: RSizes.spaceBtwInputFields),
    
        // Email
        TextFormField(
          decoration: const InputDecoration(labelText: RTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: RSizes.spaceBtwInputFields),
    
        // Phone Number
        TextFormField(
          decoration: const InputDecoration(labelText: RTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: RSizes.spaceBtwInputFields),
    
        // Password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: RTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(height: RSizes.spaceBtwSections),
    
        // Terms & Conditions Checkbox
        const RTermsAndConditionCheckbox(),
        const SizedBox(height: RSizes.spaceBtwSections),
    
        // Sign Up Button
        SizedBox(
          width: double.infinity, 
          child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(RTexts.createAccount))
        ),
      ],
    ),
                  );
  }
}

