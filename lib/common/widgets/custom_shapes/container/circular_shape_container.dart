import 'package:flutter/material.dart';
import 'package:getfit/utils/constants/colors.dart';

class CircularShape extends StatelessWidget {
  final double radius;
  final double? width;
  final double? height;
  final double opacity;
  final Color bgColor;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  const CircularShape({
    super.key,
    this.width = 400,
    this.height = 400,
    this.padding = 0,
    this.radius = 200,
    this.opacity = 0.1,
    this.bgColor = TColors.white,
    this.child,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: bgColor.withOpacity(opacity),
      ),
      child: child,
    );
  }
}
