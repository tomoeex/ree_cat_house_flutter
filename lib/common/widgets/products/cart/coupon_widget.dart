// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';


class RCouponCode extends StatelessWidget {
  const RCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return RRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? RColors.dark : RColors.white,
      padding: const EdgeInsets.only(top: RSizes.sm, bottom: RSizes.sm, right: RSizes.sm, left: RSizes.md),
        child: Row(
          children: [
            /// TextField
            Flexible(
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Have a promo code? Enter here',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
    
            /// Button
            SizedBox(
              width: 80,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: dark ? RColors.white.withOpacity(0.5) : RColors.dark.withOpacity(0.5),
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  side: BorderSide(color: Colors.grey.withOpacity(0.5))
                ),
                child: const Text('Apply'),
              ),
            ),
          ],
        ),
    );
  }
}