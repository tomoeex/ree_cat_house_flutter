import 'package:flutter/material.dart';

// Custom Class for Light & Dark Text Themes
class RCheckboxTheme {
  RCheckboxTheme._(); // To avoid creating instances

  // Customizable Light Checkbox Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    // ignore: deprecated_member_use
    checkColor: MaterialStateProperty.resolveWith((states) {
      // ignore: deprecated_member_use
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    // ignore: deprecated_member_use
    fillColor: MaterialStateProperty.resolveWith((states) {
      // ignore: deprecated_member_use
      if (states.contains(MaterialState.selected)) {
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    }),
  );
  // Customizable Dark Checkbox Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    // ignore: deprecated_member_use
    checkColor: MaterialStateProperty.resolveWith((states) {
      // ignore: deprecated_member_use
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      } else {
        return Colors.white;
      }
    }),
    // ignore: deprecated_member_use
    fillColor: MaterialStateProperty.resolveWith((states) {
      // ignore: deprecated_member_use
      if (states.contains(MaterialState.selected)) {
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    }),
  );
}