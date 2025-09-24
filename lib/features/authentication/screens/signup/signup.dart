import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/common/widgets/login_signup/form_divider.dart';
import 'package:ree_cat_house/common/widgets/login_signup/social_buttons.dart';
import 'package:ree_cat_house/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(RTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: RSizes.spaceBtwSections),

                    // Form
                    RSignupForm(),
                    const SizedBox(height: RSizes.spaceBtwSections),

                    // Divider
                    RFormDivider(dividerText: RTexts.orSignUpWith.capitalize!),

                    const SizedBox(height: RSizes.spaceBtwSections),

                    // Social Buttons
                    const RSocialButtons(),
            ],
          ),
        ), 
      ), 
    ); 
  }
}
