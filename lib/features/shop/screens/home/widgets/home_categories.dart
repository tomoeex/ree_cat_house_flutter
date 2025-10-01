import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/image_text_widgets/vertical_imge_text.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';


class RHomeCategories extends StatelessWidget {
  const RHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return  RVerticalImageText(
            image: RImages.dryFoodIcon, title: 'Dry Food', onTap: () {},);
        },
      ), 
    );
  }
}
