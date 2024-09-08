import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getfit/features/authentication/screens/login/login.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:getfit/utils/constants/text_strings.dart';
import 'package:getfit/utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  final String title, imageUrl, subTitle;
  final VoidCallback onPressed;
  const ResetPasswordScreen(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.subTitle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(() => const LoginScreen());
            },
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            ///Images
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
                child: const Text(TTexts.done),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            ///Buttons
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: onPressed,
                child: const Text(TTexts.resendEmail),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
