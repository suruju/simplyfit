import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getfit/common/widgets/login_signup/form_divider.dart';
import 'package:getfit/common/widgets/login_signup/social_buttons.dart';
import 'package:getfit/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:getfit/utils/constants/text_strings.dart';
import 'package:getfit/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(TTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///Form
              SignUpForm(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Divider
              FormDivider(displayText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Social Buttons
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
