import 'package:flutter/material.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:getfit/utils/helpers/helper_functions.dart';

class CategoryStyleImageText extends StatelessWidget {
  final String text, imagePath;
  final Color textColor;
  final Color? bgColor;
  final void Function()? onTap;

  const CategoryStyleImageText({
    super.key,
    required this.text,
    required this.imagePath,
    this.textColor = TColors.white,
    this.bgColor = TColors.white,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: dark ? TColors.dark : bgColor,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Image(
                image: AssetImage(imagePath),
                fit: BoxFit.contain,
                color: dark ? TColors.white : TColors.dark,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            SizedBox(
              width: 50,
              child: Text(text,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis),
            ),
          ],
        ),
      ),
    );
  }
}
