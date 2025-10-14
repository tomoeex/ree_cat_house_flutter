import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ree_cat_house/features/authentication/screens/login/login.dart';
import 'package:ree_cat_house/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ree_cat_house/features/authentication/screens/signup/verify_email.dart';
import 'package:ree_cat_house/navigation_menu.dart';
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
void screenRedirect() async {
  final user = _auth.currentUser;

  if (user != null) {
    if (user.emailVerified) {
      Get.offAll(() => const NavigationMenu());
    } else {
      Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
    }
  }else {
    // Local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);

  // Check if it's the first time launching the app
  deviceStorage.read('IsFirstTime') != true
      ? Get.offAll(() => const LoginScreen()) // Redirect to Login Screen if not the first time
      : Get.offAll(const OnboardingScreen()); // Redirect to OnBoarding Screen if it's the first time
  }

  
}

// ----------------------------------- Email & Password sign-in ----------------------------------- */

/// [EmailAuthentication] - LOGIN
Future<UserCredential> loginWithEmailAndPassword(String email, String password) async {
  try {
    return await _auth.signInWithEmailAndPassword(email: email, password: password);
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

/// [EmailVerification] - MAIL VERIFICATION
Future<void> sendEmailVerification() async {
  try {
    await _auth.currentUser?.sendEmailVerification();
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


  /// [EmailAuthentication] - FORGET PASSWORD
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
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

/// [ReAuthenticate] - ReAuthenticate Use

/* ----------------------------------- Federated identity & social sign-in ( error ) -----------------------------------*/

/// [GoogleAuthentication] - GOOGLE
Future<UserCredential> signInWithGoogle() async {
  try{

    ///Trigger the Authentication Flow
    final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();

    ///Obtain the auth details from the requested account
    final GoogleSignInAuthentication? googleAuth = await userAccount?.authentication;

    ///Create a new credential
    final credential = GoogleAuthProvider.credential(accessToken: googleAuth?.accessToken,idToken: googleAuth?.idToken);

    ///Once signed in, return the UserCredential
    return await _auth.signInWithCredential(credential);
  } on FirebaseAuthException catch (e) {
    throw RFirebaseAuthException(e.code).message;
  } on FirebaseException catch (e) {
    throw RFirebaseException(e.code).message;
  } on FormatException catch (_) {
    throw const RFormatException();
  } on PlatformException catch (e) {
    throw RPlatformException(e.code).message;
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
    throw 'Something went wrong. Please try again';
  }
}

/// [FacebookAuthentication] - FACEBOOK

/* ----------------------------------- end Federated identity & social sign-in -----------------------------------*/

/// [LogoutUser] - Valid for any authentication.
Future<void> logout() async {
  try {
    await FirebaseAuth.instance.signOut();
    Get.offAll(() => const LoginScreen());
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

/// DELETE USER - Remove user Auth and Firestore Account.
}