import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/bindings/general_bindings.dart';

import 'package:ree_cat_house/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ree_cat_house/util/constants/colors.dart';
import 'package:ree_cat_house/util/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme:RAppTheme.lightTheme,
      darkTheme: RAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const Scaffold(backgroundColor: RColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white))),
    //  home:  OnboardingScreen()
    );
  }
}