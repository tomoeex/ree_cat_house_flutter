import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ree_cat_house/common/widgets/appbar/appbar.dart';
import 'package:ree_cat_house/util/constants/sizes.dart';



class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppBar(showBackArrow: true, title: Text('Add new Address')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(RSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                // Name
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: "Name")),
                const SizedBox(height: 16),

                // Phone
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: "Phone Number")),
                const SizedBox(height: 16),

                // Street + Postal Code
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_4), labelText: "Street")),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: "Postal Code")),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // City + State
                Row(
                  children: [Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: "City")),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: "State")),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Country
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: "Country")),
                const SizedBox(height: 24),

                // Save button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Save logic
                    },
                    child: const Text("Save"),
                ),
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}