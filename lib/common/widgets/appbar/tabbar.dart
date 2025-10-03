import 'package:flutter/material.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/device/device_utillity.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class RTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add the background color to tabs you have to wrap them in Material widget.
  /// To do that we need [PreferredSized] Widget and that's why created custom class. [PreferredSizeWidget]
  const RTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? RColors.black : RColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: RColors.primary,
        labelColor: dark ? RColors.white : RColors.primary,
        unselectedLabelColor: RColors.darkGrey,
      ), // TabBar
    ); // Material
  }

  @override
  Size get preferredSize => Size.fromHeight(RDeviceUtils.getAppBarHeight());
}