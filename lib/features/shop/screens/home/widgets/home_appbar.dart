import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ree_cat_house/common/widgets/shimmers/shimmer.dart';
import 'package:ree_cat_house/features/personalization/controllers/user_controller.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/text_strings.dart';


class RHomeAppBar extends StatelessWidget {
  const RHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return RAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(RTexts.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: RColors.grey)),
          Obx(() { 
              if (controller.profileLoading.value){
                return const RShimmerEffect(width: 80, height: 15);
              } else{
                return  Text(controller.user.value.fullName, style: Theme.of(context).textTheme.headlineSmall!.apply(color: RColors.white));
              }
            }
          ),
        ],
      ), //
      actions: [
        RCartCounterIcon(onPressed: () {}, iconColor: RColors.white,)],
    );
  }
}
