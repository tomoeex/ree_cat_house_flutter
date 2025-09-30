import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class RCurvedEdgesWidget extends StatelessWidget {
  const RCurvedEdgesWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RCustomCurvedEdges(),
      child: child,
    );
  }
}
