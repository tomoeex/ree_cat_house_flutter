// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ree_cat_house/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ree_cat_house/util/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            RPrimaryHeaderContainer(
              child: Container()
            ),
          ],
        ),
      ), 
    );
  }
}

