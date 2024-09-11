import 'package:flutter/material.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/constants/image_strings.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:getfit/utils/helpers/helper_functions.dart';

class CircularImageWidget extends StatelessWidget {
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor, bgColor;
  final double width, height, padding;

  const CircularImageWidget({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.bgColor,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: bgColor ?? (dark ? TColors.dark : TColors.light),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Image(
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        fit: fit,
        color: overlayColor ?? (dark ? TColors.white : TColors.dark),
      ),
    );
  }
}
