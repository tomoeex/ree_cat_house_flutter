import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/data/repositories/user/user_repository.dart';
import 'package:ree_cat_house/features/personalization/controllers/user_controller.dart';
import 'package:ree_cat_house/features/personalization/screens/profile/profile.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/helpers/network_manager.dart';
import 'package:ree_cat_house/util/popups/full_screen_loader.dart';
import 'package:ree_cat_house/util/popups/loaders.dart';

// Controller to manage user-related functionality.
class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  /// init user data when Home Screen appears
  @override
  void onInit() {
    initializeNames();
    super.onInit();
  }

  /// Fetch user record
  Future<void> initializeNames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }
  
  Future<void> updateUserName() async {
    try {
      // Start Loading
      RFullScreenLoader.openLoadingDialog('We are updating your information...', RImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        RFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!updateUserNameFormKey.currentState!.validate()) {
        RFullScreenLoader.stopLoading();
        return;
      }

      // Update user's first & last name in the Firebase Firestore
      Map<String, dynamic> name = {'FirstName': firstName.text.trim(), 'LastName': lastName.text.trim()};
      await userRepository.updateSingleField(name);

      // Update the Rx User value
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      // Remove Loader
      RFullScreenLoader.stopLoading();

      // Show Success Message
      RLoaders.successSnackBar(title: 'Congratulations', message: 'Your Name has been updated.');

      // Move to previous screen.
      Get.offAll(() => const ProfileScreen());
    } catch (e) {
      RFullScreenLoader.stopLoading();
      RLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
