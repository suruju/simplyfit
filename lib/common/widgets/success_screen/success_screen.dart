import 'package:flutter/material.dart';
import 'package:getfit/common/styles/spacing_styles.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:getfit/utils/constants/text_strings.dart';
import 'package:getfit/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  final String title, imageUrl, subTitle;
  final VoidCallback onPressed;
  const SuccessScreen(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.subTitle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: TSpacingStyles.paddingWithAppBarHeight * 2,
      child: Column(children: [
        ///Image
        Image(
          image: AssetImage(imageUrl),
          width: THelperFuctions.screenWidth() * 0.6,
        ),

        ///Title and subtitle
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),

        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        ///Buttons
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onPressed,
            child: const Text(TTexts.continueTxt),
          ),
        ),
      ]),
    )));
  }
}
