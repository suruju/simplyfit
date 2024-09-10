import 'package:flutter/material.dart';
import 'package:getfit/utils/constants/colors.dart';

class ShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: TColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      offset: const Offset(0, 2),
      spreadRadius: 7);

  static final horizontalProductShadow = BoxShadow(
      color: TColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      offset: const Offset(0, 2),
      spreadRadius: 7);
}
