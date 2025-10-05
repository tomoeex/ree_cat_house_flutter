import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ree_cat_house/common/widgets/texts/section_heading.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class RBillingPaymentSection extends StatelessWidget {
  const RBillingPaymentSection({
    super.key,
  });

  @override
Widget build(BuildContext context) {
  final dark = RHelperFunctions.isDarkMode(context);
  return Column(
    children: [
      RSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: () {}),
      const SizedBox(height: RSizes.spaceBtwItems / 2),
      Row(
        children: [
          RRoundedContainer(
            width: 60,
            height: 35,
            backgroundColor: dark ? RColors.light : RColors.white,
            padding: const EdgeInsets.all(RSizes.sm),
            child: Image(image: AssetImage(RImages.paypal), fit: BoxFit.contain),
          ), // TRoundedContainer
          const SizedBox(width: RSizes.spaceBtwItems / 2),
          Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
        ],
      ), 
    ],
  );
}
}