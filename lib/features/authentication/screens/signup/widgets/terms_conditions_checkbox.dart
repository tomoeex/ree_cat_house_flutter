import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/features/authentication/controllers/signup/signup_controller.dart';

import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';


class RTermsAndConditionCheckbox extends StatelessWidget {
  const RTermsAndConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = RHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24, 
          height: 24, 
          child:  Obx(
            () => Checkbox(
                value: controller.privacyPolicy.value, 
                onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value)
            ),
          ),
        const SizedBox(width: RSizes.spaceBtwItems),
        Text.rich(
  TextSpan(
    children: [
      // ข้อความปกติ
      TextSpan(
        text: RTexts.iAgreeTo,
        style: Theme.of(context).textTheme.bodySmall,
      ),

      // Privacy Policy (ลิงก์)
      TextSpan(
        text: " ${RTexts.privacyPolicy} ",
        style: Theme.of(context).textTheme.bodyMedium!.apply(
          color: dark ? RColors.white : RColors.primary,
          decoration: TextDecoration.underline,
          decorationColor: dark ? RColors.white : RColors.primary,
        ),
      ),

      // and
      TextSpan(
        text: RTexts.and,
        style: Theme.of(context).textTheme.bodySmall,
      ),

      // Terms of Use (ลิงก์)
      TextSpan(
        text: " \n${RTexts.termsOfUse}",
        style: Theme.of(context).textTheme.bodyMedium!.apply(
          color: dark ? RColors.white : RColors.primary,
          decoration: TextDecoration.underline,
          decorationColor: dark ? RColors.white : RColors.primary,
        ),
      ),
    ],
  ),
),

      ],
    );
  }
}