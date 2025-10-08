import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ree_cat_house/features/authentication/screens/login/login.dart';
import 'package:ree_cat_house/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ree_cat_house/util/exceptions/firebase_auth_exceptions.dart';
import 'package:ree_cat_house/util/exceptions/firebase_exceptions.dart';
import 'package:ree_cat_house/util/exceptions/format_exceptions.dart';
import 'package:ree_cat_house/util/exceptions/platform_exceptions.dart';


class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  /// Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }



  /// Function to Show Relevant Screen
Future<void> screenRedirect() async {
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
Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
  try {
    return await _auth.createUserWithEmailAndPassword(email: email, password: password);
  } on FirebaseAuthException catch (e) {
    throw RFirebaseAuthException(e.code).message;
  } on FirebaseException catch (e) {
    throw RFirebaseException(e.code).message;
  } on FormatException catch (_) {
    throw const RFormatException();
  } on PlatformException catch (e) {
    throw RPlatformException(e.code).message;
  } catch (e) {
    throw 'Something went wrong. Please try again';
  }
}

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