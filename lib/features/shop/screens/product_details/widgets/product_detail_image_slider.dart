import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ree_cat_house/common/widgets/icons/r_circular_icon.dart';
import 'package:ree_cat_house/common/widgets/images/r_rounded_image.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';


class RProductImageSlider extends StatelessWidget {
  const RProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return RCurvedEdgesWidget(
      child: Container(
        color: dark ? RColors.darkerGrey : RColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(RSizes.productImageRadius * 2),
                child: Center(child: Image(image: AssetImage(RImages.productImage5))),
              ),
            ),
    
            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: RSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: RSizes.spaceBtwItems),
                  itemBuilder: (_, index) => RRoundedImage(
                    width: 80,
                    backgroundColor: dark ? RColors.dark : RColors.white,
                    border: Border.all(color: RColors.primary),
                    padding: const EdgeInsets.all(RSizes.sm),
                    imageUrl: RImages.productImage3,
                  ),
                ),
              ),
            ),
    
            /// AppBar Icons
            const RAppBar(
              showBackArrow: true,
              actions: [RCircularIcon(icon: Iconsax.heart5, color: Colors.red,)],
            )
          ],
        ),
      ), 
    );
  }
}