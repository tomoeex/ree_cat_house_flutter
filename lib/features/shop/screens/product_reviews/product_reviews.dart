import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ree_cat_house/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:ree_cat_house/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';


class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // /// -- Appbar
      appBar: RAppBar(title: Text('Reviews & Ratings'), showBackArrow: true,),

/// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const  Text("Ratings and reviews are verified and are from people who use the same type of device that you use."),
              const  SizedBox(height: RSizes.spaceBtwItems),

             // Overall Product Ratings
              const  ROverallProductRating(), 
              RRatingBarIndicator(rating: 3.5), 
              Text("12,611", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: RSizes.spaceBtwSections),

              /// User Reviews List
              const  UserReviewCard(),
              const  UserReviewCard(),
              const  UserReviewCard(),
              const  UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
