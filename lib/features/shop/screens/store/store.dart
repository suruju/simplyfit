import 'package:flutter/material.dart';
import 'package:getfit/common/widgets/appbar/appbar.dart';
import 'package:getfit/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:getfit/common/widgets/custom_shapes/container/search_container.dart';
import 'package:getfit/common/widgets/images/circular_images.dart';
import 'package:getfit/common/widgets/layouts/grid_layout.dart';
import 'package:getfit/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:getfit/common/widgets/text/section_heading.dart';
import 'package:getfit/common/widgets/text/text_verified_icon.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/constants/enums.dart';
import 'package:getfit/utils/constants/image_strings.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:getfit/utils/helpers/helper_functions.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppbar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CartCounter(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: dark ? TColors.black : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const SizedBox(
                            height: TSizes.spaceBtwItems,
                          ),
                          const SearchBarContainer(
                            text: 'Search in Store',
                            showBackground: false,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwSections,
                          ),

                          ///FEATURED BRANDS
                          const SectionHeading(
                              text: 'Featured Brands',
                              showViewAll: true,
                              textColor: TColors.black),
                          const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                          GridViewLayout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (_, index) => GestureDetector(
                                    onTap: () {},
                                    child: RoundedContainer(
                                      padding: const EdgeInsets.all(TSizes.sm),
                                      showBorder: true,
                                      bgColor: Colors.transparent,
                                      child: Row(children: [
                                        ///Icon section
                                        Flexible(
                                          child: const CircularImageWidget(
                                            image: TImages.clothIcon,
                                            isNetworkImage: false,
                                            bgColor: Colors.transparent,
                                          ),
                                        ),
                                        const SizedBox(
                                            width: TSizes.spaceBtwItems / 2),
                                        Expanded(
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const TitleWithVerifiedIcon(
                                                  title: 'Nike',
                                                  brandTextSize:
                                                      TextSizes.large,
                                                ),
                                                Text('180 Products',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelMedium),
                                              ]),
                                        )
                                      ]),
                                    ),
                                  ))
                        ],
                      )),
                )
              ],
          body: Container()),
    );
  }
}
