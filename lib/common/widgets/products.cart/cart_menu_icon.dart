import 'package:flutter/material.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class CartCounter extends StatelessWidget {
  final Color iconColor;
  final VoidCallback onPressed;
  const CartCounter({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: TColors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.white, fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
