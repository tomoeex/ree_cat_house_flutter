
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/helpers/helper_functions.dart';

class RLoaders {
  static void hideSnackBar() => ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  static void customToast({required message}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        elevation: 0,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: RHelperFunctions.isDarkMode(Get.context!) ? RColors.darkerGrey.withOpacity(0.9) : RColors.grey.withOpacity(0.9),
          ),
          child: Center(child: Text(message, style: Theme.of(Get.context!).textTheme.labelLarge)),
        ),
      ),
    );
  }
  static void successSnackBar({required title, message = '', duration = 3}) {
  Get.snackbar(
    title,
    message,
    isDismissible: true,
    shouldIconPulse: true,
    colorText: Colors.white,
    backgroundColor: RColors.primary,
    snackPosition: SnackPosition.BOTTOM,
    duration: Duration(seconds: duration),
    margin: const EdgeInsets.all(10),
    icon: const Icon(Iconsax.check, color: RColors.white),
  );
}

static void warningSnackBar({required title, message = ''}) {
  Get.snackbar(
    title,
    message,
    isDismissible: true,
    shouldIconPulse: true,
    colorText: RColors.white,
    backgroundColor: Colors.orange,
    snackPosition: SnackPosition.BOTTOM,
    duration: const Duration(seconds: 3),
    margin: const EdgeInsets.all(20),
    icon: const Icon(Iconsax.warning_2, color: RColors.white),
  );
}

static void errorSnackBar({required title, message = ''}) {
  Get.snackbar(
    title,
    message,
    isDismissible: true,
    shouldIconPulse: true,
    colorText: RColors.white,
    backgroundColor: Colors.red.shade600,
    snackPosition: SnackPosition.BOTTOM,
    duration: const Duration(seconds: 3),
    margin: const EdgeInsets.all(20),
    icon: const Icon(Iconsax.warning_2, color: RColors.white),
  );
}
}
