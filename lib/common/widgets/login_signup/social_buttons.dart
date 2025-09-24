import 'package:flutter/material.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';

class RSocialButtons extends StatelessWidget {
  const RSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: RColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: RSizes.iconMd,
              height: RSizes.iconMd,
              image: AssetImage(RImages.google),
            ), 
          ), 
        ), 
        const SizedBox(width: RSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(border: Border.all(color: RColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: RSizes.iconMd,
              height: RSizes.iconMd,
              image: AssetImage(RImages.facebook),
            ),
          ), 
        ),
      ],
    );
  }
}
