import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ree_cat_house/common/widgets/images/r_rounded_image.dart';
import 'package:ree_cat_house/features/shop/controllers/home_controller.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';


class RPromoSlider extends StatelessWidget {
  const RPromoSlider({
    super.key, 
    required this.banners,
  });
final List<String> banners;

@override
Widget build(BuildContext context) {
  final controller = Get.put(HomeController());
  return Column(
    children: [
      CarouselSlider(
        options: CarouselOptions(viewportFraction: 1, onPageChanged: (index, _) => controller.updatePageIndicator(index)),
        items: banners.map((url) => RRoundedImage(imageUrl: url)).toList(),
      ), // CarouselSlider
      const SizedBox(height: RSizes.spaceBtwItems),
      Center(
        child: Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                RCircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex.value == i ? RColors.primary : RColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}