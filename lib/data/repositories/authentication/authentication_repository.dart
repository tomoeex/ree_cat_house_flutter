import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ree_cat_house/features/authentication/screens/login/login.dart';
import 'package:ree_cat_house/features/authentication/screens/onboarding/onboarding.dart';


class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();

  /// Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }



  /// Function to Show Relevant Screen
screenRedirect() async {
  // Local Storage
  if (kDebugMode) {
    print('====================== GET STORAGE ======================');
    print(deviceStorage.read('IsFirstTime'));
  }


  deviceStorage.writeIfNull('IsFirstTime', true);
  deviceStorage.read('IsFirstTime') != true ? Get.offAll(() => const LoginScreen()) : Get.offAll(const OnboardingScreen());
}

// ----------------------------------- Email & Password sign-in ----------------------------------- */

/// [EmailAuthentication] - SignIn

/// [EmailAuthentication] - REGISTER

/// [ReAuthenticate] - ReAuthenticate User

/// [EmailVerification] - MAIL VERIFICATION

/// [EmailAuthentication] - FORGET PASSWORD

/* ----------------------------------- Federated identity & social sign-in -----------------------------------*/

/// [GoogleAuthentication] - GOOGLE

/// [FacebookAuthentication] - FACEBOOK

/* ----------------------------------- end Federated identity & social sign-in -----------------------------------*/

/// [LogoutUser] - Valid for any authentication.

/// DELETE USER - Remove user Auth and Firestore Account.
}