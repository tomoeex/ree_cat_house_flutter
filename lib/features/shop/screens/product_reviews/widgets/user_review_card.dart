import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ree_cat_house/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        /// ส่วนชื่อผู้รีวิว + ไอคอน
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(RImages.userProfileImage1),
                ),
                const SizedBox(width: RSizes.spaceBtwItems),
                Text('Ree Cat', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: RSizes.spaceBtwItems),

        /// ส่วนแสดงคะแนน + วันที่รีวิว
        Row(
          children: [
            const RRatingBarIndicator(rating: 4),
            const SizedBox(width: RSizes.spaceBtwItems),
            Text('01 Oct, 2025', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: RSizes.spaceBtwItems),

        /// ข้อความรีวิวจากลูกค้า
        const ReadMoreText(
          'My cat loves this dry food! The kibble size is perfect and the smell is fresh. I’ve noticed her fur looks shinier and she’s more active after switching to this brand.', // คำอธิบายเกี่ยวกับอาหารแมวแบบเม็ด
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: RColors.primary,
          ),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: RColors.primary,
          ),
        ),
        const SizedBox(height: RSizes.spaceBtwItems),

        /// ส่วนรีวิวจากร้านค้า
        RRoundedContainer(
          backgroundColor: dark ? RColors.darkGrey : RColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(RSizes.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// หัวข้อ: ชื่อร้าน + วันที่ตอบกลับ
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ree Cat Store", style: Theme.of(context).textTheme.titleMedium),
                    Text('02 Oct, 2025', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: RSizes.spaceBtwItems),

                /// ข้อความตอบกลับจากร้านค้า
                const ReadMoreText(
                  'Thank you for your kind review! We are glad your cat enjoys our premium dry food. We use high-quality ingredients to keep cats healthy and happy.', // ข้อความตอบกลับจากร้าน
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: RColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: RColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: RSizes.spaceBtwSections),
      ],
    );
  }
}
