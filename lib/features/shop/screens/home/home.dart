import 'package:flutter/material.dart';
import 'package:getfit/common/widgets/custom_shapes/container/home_header_container.dart';
import 'package:getfit/common/widgets/custom_shapes/container/search_container.dart';
import 'package:getfit/common/widgets/text/section_heading.dart';
import 'package:getfit/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:getfit/features/shop/screens/home/widgets/home_categories.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///Search bar
                  SearchBarContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          text: 'Popular Categories',
                          showViewAll: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                        HomeCategories(),
                        SizedBox(height: TSizes.spaceBtwSections * 2),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
