import 'package:flutter/material.dart';
import 'package:getfit/common/widgets/layouts/grid_layout.dart';
import 'package:getfit/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:getfit/common/widgets/text/brand_showcase.dart';
import 'package:getfit/common/widgets/text/section_heading.dart';
import 'package:getfit/utils/constants/image_strings.dart';
import 'package:getfit/utils/constants/sizes.dart';

class CategoryItemsTab extends StatelessWidget {
  const CategoryItemsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(children: [
          const BrandShowcase(
            images: [TImages.product1, TImages.product2, TImages.product3],
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          const BrandShowcase(
            images: [TImages.product1, TImages.product2, TImages.product3],
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          SectionHeading(
              text: 'You might like', showViewAll: true, onPressed: () {}),
          const SizedBox(height: TSizes.spaceBtwItems),
          GridViewLayout(
              itemCount: 4,
              itemBuilder: (_, index) => const ProductCardVertical()),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
        ]),
      ),
    ]);
  }
}
