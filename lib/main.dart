import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ree_cat_house/data/repositories/authentication/authentication_repository.dart';
import 'package:ree_cat_house/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:ree_cat_house/features/personalization/controllers/user_controller.dart';
import 'app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // Add Widgets Binding = เพิ่มการเชื่อมโยงวิดเจ็ต
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Getx Local Storage = การจัดเก็บข้อมูลภายในเครื่องของ Getx
  await GetStorage.init();

  // Await Native Splash = รอการแสดงหน้าจอเริ่มต้นของระบบ
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);


  //Initialize Firebase = เริ่มต้น Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (FirebaseApp value) => Get.put(AuthenticationRepository())
  );

  //Put Controller
  Get.put(UserController());
  Get.put(ForgetPasswordController());

  //Run App
  runApp(const App());
}
//Todo: Initialize Authentication = เริ่มต้นการตรวจสอบสิทธิ์