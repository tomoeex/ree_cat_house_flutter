import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

/// --- Most of the Styling is already defined in the Utils -> Themes -> ChipTheme.dart
class RChoiceChip extends StatelessWidget {
  const RChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = RHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() :  Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? RColors.white : null),
        avatar: isColor ? RCircularContainer(width: 50, height: 50, backgroundColor: RHelperFunctions.getColor(text)!) : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? RHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}