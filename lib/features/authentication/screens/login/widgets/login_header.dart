import 'package:flutter/material.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class RLoginHeader extends StatelessWidget {
  const RLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Column(
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
    );
  }
}
