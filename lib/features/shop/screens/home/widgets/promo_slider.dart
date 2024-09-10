import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getfit/common/widgets/custom_shapes/container/circular_shape_container.dart';
import 'package:getfit/common/widgets/images/rounded_image.dart';
import 'package:getfit/features/shop/controllers/home_controller.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  final List<String> banners;
  const PromoSlider({
    super.key,
    required this.banners,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map((url) => RoundedImage(
                    imageUrl: url,
                    padding: EdgeInsets.zero,
                  ))
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.changeCarousalIndex(index),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(mainAxisSize: MainAxisSize.min, children: [
              for (int i = 0; i < banners.length; i++)
                CircularShape(
                  width: 20,
                  height: 4,
                  bgColor: controller.carousalCurrentIndex.value == i
                      ? TColors.primary
                      : TColors.grey,
                  opacity: 1,
                  margin: const EdgeInsets.only(right: 10),
                )
            ]),
          ),
        )
      ],
    );
  }
}
