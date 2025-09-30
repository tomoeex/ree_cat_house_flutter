import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ree_cat_house/util/constants/colors.dart';

class RPrimaryHeaderContainer extends StatelessWidget {
  const RPrimaryHeaderContainer({
    super.key, 
    required this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return RCurvedEdgesWidget(
      child: Container(
        color: RColors.primary,
        padding: const EdgeInsets.only(bottom: 0),

          /// -- If 'size.isFinite': is not true in Stack() error occurred -> Read README.md file at
          child: Stack(
            children: [
              // -- Background Custom Shapes
              Positioned(
                top: -150, right: -250, child: RCircularContainer(backgroundColor: RColors.textWhite.withOpacity(0.1))),
              Positioned(
                top: 100, right: -300, child: RCircularContainer(backgroundColor: RColors.textWhite.withOpacity(0.1))),
            ],
          ),
        ),
    );
  }
}

