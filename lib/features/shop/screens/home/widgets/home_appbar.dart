import 'package:flutter/material.dart';
import 'package:getfit/common/widgets/appbar/appbar.dart';
import 'package:getfit/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TTexts.homeAppbarTitle,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: TColors.grey)),
            Text(TTexts.homeAppbarSubtitle,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: TColors.white)),
          ],
        ),
        actions: [
          CartCounter(
            iconColor: TColors.white,
            onPressed: () {},
          )
        ]);
  }
}
