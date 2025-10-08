import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/data/repositories/authentication/authentication_repository.dart';
import 'package:ree_cat_house/data/repositories/user/user_repository.dart';
import 'package:ree_cat_house/features/authentication/screens/signup/verify_email.dart';
import 'package:ree_cat_house/features/personalization/models/user_model.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/helpers/network_manager.dart';
import 'package:ree_cat_house/util/popups/full_screen_loader.dart';
import 'package:ree_cat_house/util/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs; // Observable to toggle password visibility
  final privacyPolicy = true.obs; // Observable for privacy policy acceptance
  final email = TextEditingController(); // Controller for email input
  final lastName = TextEditingController(); // Controller for last name input
  final username = TextEditingController(); // Controller for username input
  final password = TextEditingController(); // Controller for password input
  final firstName = TextEditingController(); // Controller for first name input
  final phoneNumber = TextEditingController(); // Controller for phone number input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); // Form Key for form validation

  /// -- SIGNUP
  void signup() async {
    try {
      // Start Loading
      RFullScreenLoader.openLoadingDialog('We are processing your information...', RImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;
      
      // Form Validation
      if (!signupFormKey.currentState!.validate()) return;
      

      // Privacy Policy Check
      if (!privacyPolicy.value) {
        RLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message: 'In order to create account, you must have to read and accept the Privacy Policy & Terms of Use.',
        );
        return;
      }

  // Register user in the Firebase Authentication & Save user data in the Firebase
  final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

  // Save Authenticated user data in the Firebase Firestore
  final newUser = UserModel(
    id: userCredential.user!.uid,
    firstName: firstName.text.trim(),
    lastName: lastName.text.trim(),
    username: username.text.trim(),
    email: email.text.trim(),
    phoneNumber: phoneNumber.text.trim(),
    profilePicture: ''
  );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Remove Loader
      RFullScreenLoader.stopLoading();

      // Show Success Message
      RLoaders.successSnackBar(title: 'Congratulations', message: 'Your account has been created! Verify email to continue.');

      // Move to Verify Email Screen
      Get.to(() => const VerifyEmailScreen());
      
    } catch (e) {

      // Remove Loader
      RFullScreenLoader.stopLoading();

      // Show some Generic Error to the user
      RLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
