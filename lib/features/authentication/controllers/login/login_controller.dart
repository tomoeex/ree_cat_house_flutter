import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ree_cat_house/data/repositories/authentication/authentication_repository.dart';
import 'package:ree_cat_house/features/personalization/controllers/user_controller.dart';
import 'package:ree_cat_house/util/constants/image_strings.dart';
import 'package:ree_cat_house/util/helpers/network_manager.dart';
import 'package:ree_cat_house/util/popups/full_screen_loader.dart';
import 'package:ree_cat_house/util/popups/loaders.dart';

class LoginController extends GetxController {

  /// Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();

  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  
@override
void onInit() {
  email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
  password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
  super.onInit();
}

  /// -- Email and Password SignIn
  Future<void> emailAndPasswordSignIn() async {
    try {
      // Start Loading
      RFullScreenLoader.openLoadingDialog('Logging you in...', RImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        RFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!loginFormKey.currentState!.validate()) {
        RFullScreenLoader.stopLoading();
        return;
      }

      // Save Data if Remember Me is selected
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // Login user using Email & Password Authentication
      final userCredentials = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Remove Loader
      RFullScreenLoader.stopLoading();

      // Redirect after login success
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      // Stop loader & show error
      RFullScreenLoader.stopLoading();
      RLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }


  ///Google Sign-In Authentication
  Future<void> googleSignIn() async {
    try {
      
      // Start Loading
      RFullScreenLoader.openLoadingDialog('Logging you in...', RImages.docerAnimation,);
      
      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        RFullScreenLoader.stopLoading();
        return;
      }

      //Google Authentication
      final userCredentials = await AuthenticationRepository.instance.signInWithGoogle();

      //save User Record
      final userController = UserController.instance;
      await userController.saveUserRecord(userCredentials);
    
    // Remove Loader
    RFullScreenLoader.stopLoading();

    //redirect
    AuthenticationRepository.instance.screenRedirect();
    }

    catch (e) {
      // Remove Loader
      RFullScreenLoader.stopLoading();
      RLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
