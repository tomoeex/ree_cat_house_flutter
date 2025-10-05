import 'package:flutter/material.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/features/shop/screens/order/widgets/order_list.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// --- AppBar
      appBar: RAppBar(showBackArrow: true, title: Text('My Orders', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(RSizes.defaultSpace),

        /// --- Orders
        child: ROrderListItems(),
      ), 
    );
  }
}