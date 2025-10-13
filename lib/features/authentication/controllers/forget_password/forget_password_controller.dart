
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/data/repositories/authentication/authentication_repository.dart';
import 'package:ree_cat_house/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/helpers/network_manager.dart';
import 'package:ree_cat_house/util/popups/full_screen_loader.dart';
import 'package:ree_cat_house/util/popups/loaders.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  // Variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  // Send Reset Password EMail
  sendPasswordResetEmail() async {
    try{
      // Start Loading
      RFullScreenLoader.openLoadingDialog('Processing your request...', RImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {RFullScreenLoader.stopLoading(); return;}

      // Form Validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        RFullScreenLoader.stopLoading();
        return;
      }

      // Send EMail to Resrt Password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email.text.trim());

      // Remove Loader
      RFullScreenLoader.stopLoading();

      // Show Success Screen
      RLoaders.successSnackBar(title: 'Email Sent', message: 'Email Link Sent to Reset your Password'.tr);

      // Redirect
      Get.to(() => ResetPasswordScreen(email: email.text.trim()));


    } catch  (e) {
      // Remove Loader
      RFullScreenLoader.stopLoading();
      RLoaders.errorSnackBar(title: 'error', message: e.toString());
    }
  }

  resndPasswordResetEmail(String email) async{
    try{
      // Start Loading
      RFullScreenLoader.openLoadingDialog('Processing your request...', RImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {RFullScreenLoader.stopLoading(); return;}

      // Send EMail to Resrt Password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      // Remove Loader
      RFullScreenLoader.stopLoading();

      // Show Success Screen
      RLoaders.successSnackBar(title: 'Email Sent', message: 'Email Link Sent to Reset your Password'.tr);

    } catch  (e) {
      // Remove Loader
      RFullScreenLoader.stopLoading();
      RLoaders.errorSnackBar(title: 'error', message: e.toString());
    }
  }
}