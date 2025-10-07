import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ree_cat_house/features/personalization/models/user_model.dart';
import 'package:ree_cat_house/util/exceptions/firebase_exceptions.dart';
import 'package:ree_cat_house/util/exceptions/format_exceptions.dart';
import 'package:ree_cat_house/util/exceptions/platform_exceptions.dart';
/*import 'package:l_store_android/features/personalization/models/user_model.dart';
import 'package:l_store_android/utils/exceptions/firebase_exceptions.dart';
import 'package:l_store_android/utils/exceptions/format_exceptions.dart';
import 'package:l_store_android/utils/exceptions/platform_exceptions.dart';
*/

/// Repository class for user-related operations.
class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

/// Function to save user data to Firestore.
Future<void> saveUserRecord(UserModel user) async {
  try {
    await _db.collection("Users").doc(user.id).set(user.toJson());
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

/// Function to fetch user details based on user ID.

/// Function to update user data in Firestore.

/// Update any field in specific Users Collection

/// Upload any Image

/// Function to remove user data from Firestore.
}