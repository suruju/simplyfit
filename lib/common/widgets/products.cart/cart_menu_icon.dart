import 'package:flutter/material.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class CartCounter extends StatelessWidget {
  final Color? iconColor;
  final VoidCallback onPressed;
  const CartCounter({
    super.key,
    this.iconColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color: (iconColor != null)
                  ? iconColor
                  : (dark ? TColors.white : TColors.black),
            )),
        Positioned(
          right: 0,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: dark ? TColors.white : TColors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: dark ? TColors.black : TColors.white,
                    fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
