import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/constants/text_strings.dart';
import 'package:getfit/utils/helpers/helper_functions.dart';

class FormDivider extends StatelessWidget {
  final String displayText;
  const FormDivider({super.key, required this.displayText});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          displayText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
