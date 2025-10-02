// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ree_cat_house/util/constants/colors.dart';

class RShadowStyle {

  static final verticalProductShadow = BoxShadow(
    color: RColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  ); // BoxShadow

  static final horizontalProductShadow = BoxShadow(
    color: RColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  ); // BoxShadow
}