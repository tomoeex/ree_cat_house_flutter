import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:ree_cat_house/util/constants/colors.dart';

class RCartCounterIcon extends StatelessWidget {
  const RCartCounterIcon({
    super.key, 
    this.iconColor, 
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;
  

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(Iconsax.shopping_bag, color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: RColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: RColors.white, fontSizeFactor: 0.8)),
            ),
          ),
        ),
      ],
    );
  }
}
