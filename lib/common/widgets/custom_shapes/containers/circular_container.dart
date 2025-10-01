import 'package:flutter/material.dart';
import 'package:ree_cat_house/util/constants/colors.dart';

class RCircularContainer extends StatelessWidget {
  const RCircularContainer({
    super.key, 
    this.child, 
    this.width = 400, 
    this.height = 400, 
    this.radius = 400, 
    this.margin, 
    this.padding = 0, 
    this.backgroundColor = RColors.white,
    
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
