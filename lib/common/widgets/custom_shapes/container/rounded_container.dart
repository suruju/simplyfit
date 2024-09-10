import 'package:flutter/material.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/constants/sizes.dart';

class RoundedContainer extends StatelessWidget {
  final double radius;
  final double? width;
  final double? height;
  final Widget? child;
  final bool showBorder;
  final Color borderColor, bgColor;
  final EdgeInsetsGeometry? padding, margin;

  const RoundedContainer(
      {super.key,
      this.radius = TSizes.cardRadiusLg,
      this.width,
      this.height,
      this.child,
      this.showBorder = false,
      this.borderColor = TColors.borderPrimary,
      this.bgColor = TColors.white,
      this.padding,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
