import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/data/repositories/user/user_repository.dart';
import 'package:ree_cat_house/features/personalization/models/user_model.dart';
import 'package:ree_cat_house/util/popups/loaders.dart';

class UserController extends GetxController {
  static UserController get instance  => Get.find();

  final userRepository = Get.put(UserRepository());

  //Save user Records from any Registration provider
  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    // await AuthenticationRepository.instance.createUser(userData);

    try {
      
      if (userCredentials != null) {
        //Convert Name to First and Last Name
        final nameParts = UserModel.nameParts(userCredentials.user!.displayName ?? '');
        final username = UserModel.generateUsername(userCredentials.user!.displayName ?? '');

      //Map Data
        final user = UserModel(
          id: userCredentials.user!.uid,
          firstName: nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
          username: username,
          email: userCredentials.user!.email ?? '',
          phoneNumber: userCredentials.user!.phoneNumber ?? '',
          profilePicture: userCredentials.user!.photoURL ?? '',
        );
      

      await userRepository.saveUserRecord(user);
    }
    
    } catch (e) {
      RLoaders.warningSnackBar(
      title: 'Data not saved',
      message: 'Something went wrong while saving your information. you can re-save your data in your Profile'
      );
    }

  }
}