import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getfit/features/authentication/screens/password_configuration/reset_password_screen.dart';
import 'package:getfit/utils/constants/image_strings.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:getfit/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ///Heading
          Text(
            TTexts.forgotPasswordTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(TTexts.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: TSizes.spaceBtwSections * 2),

          ///Email Text Field
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right)),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          ///Submit Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => ResetPasswordScreen(
                  title: TTexts.changeYourPasswordTitle,
                  imageUrl: TImages.verifyEmail,
                  subTitle: TTexts.changeYourPasswordSubTitle,
                  onPressed: () {})),
              child: const Text(TTexts.submit),
            ),
          ),
        ]),
      ),
    );
  }
}
