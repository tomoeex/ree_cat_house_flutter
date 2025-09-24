import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              // Image with 60% of screen width

              // Title & SubTitle

              // Buttons
            ],
          ),
        ), 
      ), 
    ); 
  }
}
