import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';


class RHomeAppBar extends StatelessWidget {
  const RHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(RTexts.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: RColors.grey)),
          Text(RTexts.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: RColors.white)),
        ],
      ), //
      actions: [RCartCounterIcon(onPressed: () {}, iconColor: RColors.white,)],
    );
  }
}
