import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/images/r_circular_image.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';


class RUserProfileTile extends StatelessWidget {
  const RUserProfileTile({
    super.key, 
    required this.onPressed, 
    
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const RCircularImage(image: RImages.user, width: 50, height: 50, padding: 0),
      title: Text('Tomoexx', style: Theme.of(context).textTheme.headlineSmall!.apply(color: RColors.white)),
      subtitle: Text('tomoexx@example.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: RColors.white)),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: RColors.white,)),
    );
  }
}