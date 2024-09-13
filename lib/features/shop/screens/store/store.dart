import 'package:flutter/material.dart';
import 'package:getfit/common/widgets/appbar/appbar.dart';
import 'package:getfit/common/widgets/appbar/tabbar.dart';
import 'package:getfit/common/widgets/custom_shapes/container/search_container.dart';
import 'package:getfit/common/widgets/layouts/grid_layout.dart';
import 'package:getfit/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:getfit/common/widgets/text/brand_card.dart';
import 'package:getfit/common/widgets/text/section_heading.dart';
import 'package:getfit/features/shop/screens/store/widgets/category_tab_item.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:getfit/utils/helpers/helper_functions.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppbar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
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
                          itemBuilder: (_, index) => const BrandCard(
                                showBorder: true,
                              ))
                    ],
                  )),
              bottom: const TabBarWidget(
                tabs: [
                  Tab(child: Text('Sport')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ],
              ),
            )
          ],
          body: const TabBarView(
            children: [
              CategoryItemsTab(),
              CategoryItemsTab(),
              CategoryItemsTab(),
              CategoryItemsTab(),
              CategoryItemsTab(),
            ],
          ),
        ),
      ),
    );
  }
}
