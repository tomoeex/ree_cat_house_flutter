import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/features/shop/models/category_model.dart';
import 'package:ree_cat_house/util/exceptions/firebase_exceptions.dart';
import 'package:ree_cat_house/util/exceptions/firebase_storage_service.dart';
import 'package:ree_cat_house/util/exceptions/platform_exceptions.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  /// Variables
  final _db = FirebaseFirestore.instance;

  /// Get all categories
  Future<List<CategoryModel>> getAllCategories() async {
    try {
      final snapshot = await _db.collection('Categories').get();
      final list = snapshot.docs.map((document) => CategoryModel.fromSnapshot(document)).toList();
      return list;
    } on FirebaseException catch (e) {
      throw RFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw RPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// Get Sub Categories

  /// Upload Categories to the Cloud Firebase
Future<void> uploadDummyData(List<CategoryModel> categories) async {
  try {
    // Upload all the Categories along with their Images
    final storage = Get.put(RFirebaseStorageService());

    // Loop through each category
    for (var category in categories) {
      // Get ImageData link from the local assets
      final file = await storage.getImageDataFromAssets(category.image);

      // Upload Image and Get its URL
      final url = await storage.uploadImageData('Categories', file, category.name);

      // Assign URL to Category.image attribute
      category.image = url;

      // Store Category in Firestore
      await _db.collection("Categories").doc(category.id).set(category.toJson());
      }
    } on FirebaseException catch (e) {
      throw RFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw RPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}