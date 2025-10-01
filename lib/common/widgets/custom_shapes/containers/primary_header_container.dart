// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ree_cat_house/util/constants/colors.dart';

class RPrimaryHeaderContainer extends StatelessWidget {
  const RPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RCurvedEdgesWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: RColors.primary,

          /// -- [size.isFinite] is not true] Error -> Read README.md file at [DESIGN ERRORS] # 1
          child: Stack(
            children: [
              /// Background Custom Shapes
              Positioned(top: -150, right: -250, child: RCircularContainer(backgroundColor: RColors.textWhite.withOpacity(0.1))),
              Positioned(top: 100, right: -300, child: RCircularContainer(backgroundColor: RColors.textWhite.withOpacity(0.1))),
              child,
            ],
          ), 
        ), 
      ), 
    );
  }
}