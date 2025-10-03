import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ree_cat_house/common/widgets/images/r_circular_image.dart';
import 'package:ree_cat_house/common/widgets/texts/r_brand_title_text_with_verified_icon.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/enums.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';


class RBrandCard extends StatelessWidget {
  const RBrandCard({
    super.key, 

    required this.showBorder, 
    this.onTap,
  });


  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {

    final isDark = RHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: RRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(RSizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // --- Icon
            Flexible(
              child: RCircularImage(
                
                isNetworkImage: false,
                image: RImages.litterIcon,
                backgroundColor: Colors.transparent,
                overlayColor: isDark ? RColors.white : RColors.black,
              ),
            ),
            const SizedBox (width: RSizes.spaceBtwItems / 1.5),
      
            /// -- Texts
            // [Expanded] & Column [MainAxisSize.min] is important to keep the elements in the vertical center and also
            // to keep text inside the boundaries.
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const RBrandTitleWithVerifiedIcon(title: 'Bezz', brandTextSize: TextSizes.large),

                  Text(
                    '256 products with asjbsd sj',

                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                ),
              ],                                 ),
            ),
        ],
      ),
      ),
    );
  }
}