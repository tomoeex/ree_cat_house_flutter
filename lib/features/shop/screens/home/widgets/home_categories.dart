import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/common/widgets/image_text_widgets/vertical_imge_text.dart';
import 'package:ree_cat_house/common/widgets/shimmers/category_shimmer.dart';
import 'package:ree_cat_house/features/shop/controllers/category_controller.dart';
import 'package:ree_cat_house/features/shop/screens/sub_category/sub_categories.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';


class RHomeCategories extends StatelessWidget {
  const RHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());

    return Obx(() {
      if (categoryController.isLoading.value) return const RCategoryShimmer();

      if (categoryController.featuredCategories.isEmpty) {
        return Center(child: Text('No Data Found!', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white)));
      }

      return SizedBox(
        height: 80,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: categoryController.featuredCategories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            final category = categoryController.featuredCategories[index];
            return RVerticalImageText(image: category.image, title: category.name, onTap: () => Get.to(() => const SubCategoriesScreen()));
          },
        ),
      );
    });
  }
}