import 'package:flutter/material.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';


class RGridLayout extends StatelessWidget {
  const RGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget Function(BuildContext context, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: RSizes.gridViewSpacing,
        crossAxisSpacing: RSizes.gridViewSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}