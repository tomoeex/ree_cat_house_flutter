import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class RFormDivider extends StatelessWidget {
  const RFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

@override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? RColors.darkGrey : RColors.grey, thickness: 0.5, indent: 60, endIndent: 9)),
        Text(RTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: dark ? RColors.darkGrey : RColors.grey, thickness: 0.5, indent: 9, endIndent: 60)),
      ],
    );
  }
}