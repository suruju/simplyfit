import 'package:flutter/material.dart';
import 'package:getfit/utils/constants/image_strings.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:getfit/utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image(
        image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
        height: 200,
      ),
      const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      Text(TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium),
      const SizedBox(
        height: TSizes.sm,
      ),
      Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
    ]);
  }
}
