import 'package:flutter/material.dart';
import 'package:getfit/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:getfit/common/widgets/text/brand_card.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:getfit/utils/helpers/helper_functions.dart';

class BrandShowcase extends StatelessWidget {
  final List<String> images;
  const BrandShowcase({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      bgColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          const BrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems),
          Row(
              children: images
                  .map((image) =>
                      brandShowcaseImageWidget(image: image, context: context))
                  .toList()),
        ],
      ),
    );
  }

  Widget brandShowcaseImageWidget({required String image, context}) {
    final dark = THelperFuctions.isDarkMode(context);
    return Expanded(
        child: RoundedContainer(
      height: 100,
      bgColor: dark ? TColors.darkerGrey : TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.md),
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.contain,
      ),
    ));
  }
}
