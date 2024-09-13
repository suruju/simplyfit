import 'package:flutter/material.dart';
import 'package:getfit/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:getfit/common/widgets/images/circular_images.dart';
import 'package:getfit/common/widgets/text/text_verified_icon.dart';
import 'package:getfit/utils/constants/enums.dart';
import 'package:getfit/utils/constants/image_strings.dart';
import 'package:getfit/utils/constants/sizes.dart';

class BrandCard extends StatelessWidget {
  final bool showBorder;
  final void Function()? onTap;
  const BrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        bgColor: Colors.transparent,
        child: Row(children: [
          ///Icon section
          const Flexible(
            child: CircularImageWidget(
              image: TImages.clothIcon,
              isNetworkImage: false,
              bgColor: Colors.transparent,
            ),
          ),
          const SizedBox(width: TSizes.spaceBtwItems / 2),
          Expanded(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text('180 Products',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium),
                ]),
          )
        ]),
      ),
    );
  }
}
