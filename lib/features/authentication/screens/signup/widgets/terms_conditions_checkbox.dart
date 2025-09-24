import 'package:flutter/material.dart';

import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';


class RTermsAndConditionCheckbox extends StatelessWidget {
  const RTermsAndConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: RSizes.spaceBtwItems),
        Text.rich(
          TextSpan(children: [
            // ignore: unnecessary_string_interpolations
            TextSpan(text: '${RTexts.iAgreeTo}', style: Theme.of(context).textTheme.bodySmall),
            // ignore: unnecessary_string_interpolations
            TextSpan(text: '${RTexts.privacyPolicy}', style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? RColors.white : RColors.primary,
              decoration: TextDecoration.underline,
              decorationColor: dark ? RColors.white : RColors.primary,
            )),
            TextSpan(text: '${RTexts.and}', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: RTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? RColors.white : RColors.primary,
              decoration: TextDecoration.underline,
              decorationColor: dark ? RColors.white : RColors.primary,
            )),
          ]), 
        ), 
      ],
    );
  }
}