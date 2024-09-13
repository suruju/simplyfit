import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getfit/common/widgets/appbar/appbar.dart';
import 'package:getfit/common/widgets/icons/circular_icons';
import 'package:getfit/common/widgets/layouts/grid_layout.dart';
import 'package:getfit/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:getfit/features/shop/screens/home/home.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(() => const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                GridViewLayout(
                    itemCount: 6,
                    itemBuilder: (_, index) => const ProductCardVertical()),
              ],
            )),
      ),
    );
  }
}
