import 'package:flutter/material.dart';
import 'package:getfit/common/widgets/text/brand_title_text.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/constants/enums.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class TitleWithVerifiedIcon extends StatelessWidget {
  final Color? textColor, iconColor;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  const TitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.iconColor = TColors.primary,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            maxLines: maxLines,
            textAlign: textAlign,
            textColor: textColor,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: TSizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconXs)
      ],
    );
  }
}
