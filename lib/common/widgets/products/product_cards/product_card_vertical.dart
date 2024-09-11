import 'package:flutter/material.dart';
import 'package:getfit/common/styles/shadows.dart';
import 'package:getfit/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:getfit/common/widgets/icons/circular_icons';
import 'package:getfit/common/widgets/images/rounded_image.dart';
import 'package:getfit/common/widgets/text/text_verified_icon.dart';
import 'package:getfit/common/widgets/texts/product_price_text.dart';
import 'package:getfit/common/widgets/texts/product_title_text.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/constants/image_strings.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:getfit/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
          width: 180,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            boxShadow: [ShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkerGrey : TColors.white,
          ),
          child: Column(
            children: [
              ///THUMBNAIL WISHLIST ICON DISCOUNT
              RoundedContainer(
                height: 180,
                padding: const EdgeInsets.all(TSizes.sm),
                bgColor: dark ? TColors.dark : TColors.light,
                child: Stack(
                  children: [
                    //THUMBNAIL IMAGE
                    const RoundedImage(imageUrl: TImages.product1),

                    ///discout tag
                    Positioned(
                      top: 5,
                      left: 5,
                      child: RoundedContainer(
                        radius: TSizes.sm,
                        bgColor: TColors.secondary.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm,
                          vertical: TSizes.xs,
                        ),
                        child: Text(
                          '25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.black),
                        ),
                      ),
                    ),
                    //wishlist icon
                    const Positioned(
                      top: 0,
                      right: 0,
                      child: CircularIcon(
                        icon: Iconsax.heart5,
                        iconColor: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),

              ///DETAILS
              const Padding(
                padding: EdgeInsets.only(left: TSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductTitleText(
                        title: "Green Nike Air Shoes", smallTitle: true),
                    SizedBox(height: TSizes.spaceBtwItems / 2),
                    TitleWithVerifiedIcon(
                      title: 'Nike',
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: TSizes.sm),
                    child: ProductPrice(
                      price: '35',
                      isLarge: true,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(TSizes.productImageRadius),
                        )),
                    child: const SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child: Center(
                        child: Icon(Iconsax.add, color: TColors.white),
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
