import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:ree_cat_house/common/styles/spacing_styles.dart';
import 'package:ree_cat_house/common/widgets/login_signup/form_divider.dart';
import 'package:ree_cat_house/common/widgets/login_signup/social_buttons.dart';
import 'package:ree_cat_house/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ree_cat_house/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: RSpacingStyle.paddingWithAppBarHeight,
          child: Column( //form
            children: [
              // Logo, Title & sub-Title
              const RLoginHeader(),

              // Form
                const RLoginForm(),
              
              // Divider
              RFormDivider(dividerText: RTexts.orSignInWith.capitalize!),

              const SizedBox(height: RSizes.spaceBtwItems),
              
              // Footer
              const RSocialButtons() 
            ],
          ),
        ), 
      ), 
    ); 
  }
}
