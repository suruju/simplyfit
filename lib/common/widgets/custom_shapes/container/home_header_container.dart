import 'package:flutter/material.dart';
import 'package:getfit/common/widgets/custom_shapes/container/circular_shape_container.dart';
import 'package:getfit/common/widgets/custom_shapes/container/curved_edges/curved_edges_widget.dart';
import 'package:getfit/utils/constants/colors.dart';

class HomeHeaderContainer extends StatelessWidget {
  final Widget child;
  const HomeHeaderContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0.0),

        ///If [size.isFinite is note true in stack ] then it will not work properly so wrap the stack with sized box with fixed height value
        child: Stack(
          children: [
            const Positioned(top: -150, right: -250, child: CircularShape()),
            const Positioned(top: 100, right: -300, child: CircularShape()),
            child,
          ],
        ),
      ),
    );
  }
}
