import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getfit/common/styles/spacing_styles.dart';
import 'package:getfit/common/widgets/login_signup/form_divider.dart';
import 'package:getfit/common/widgets/login_signup/social_buttons.dart';
import 'package:getfit/features/authentication/screens/login/widgets/login_form.dart';
import 'package:getfit/features/authentication/screens/login/widgets/login_header.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:getfit/utils/constants/text_strings.dart';
import 'package:getfit/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo, Title and Subtitle
              LoginHeader(dark: dark),
              const LoginForm(),

              ///Divider
              FormDivider(displayText: TTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              ///Footer
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
