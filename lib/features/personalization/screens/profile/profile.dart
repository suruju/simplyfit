import 'package:flutter/material.dart';
import 'package:getfit/common/widgets/appbar/appbar.dart';
import 'package:getfit/common/widgets/images/circular_images.dart';
import 'package:getfit/common/widgets/text/section_heading.dart';
import 'package:getfit/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/constants/image_strings.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImageWidget(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const SectionHeading(
                        text: 'Profile Information', showViewAll: false),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    ProfileMenu(
                      title: 'Name',
                      value: 'Shaurya Raghubansh',
                      onPressed: () {},
                    ),
                    ProfileMenu(
                      title: 'Username',
                      value: 'shaurya',
                      onPressed: () {},
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const SectionHeading(
                        text: 'Personal Information', showViewAll: false),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    ProfileMenu(
                        title: 'User ID',
                        value: '123456789',
                        icon: Iconsax.copy,
                        onPressed: () {}),
                    ProfileMenu(
                        title: 'Email',
                        value: 'shaurya.raghubansh@gmail.com',
                        onPressed: () {}),
                    ProfileMenu(
                        title: 'Phone Number',
                        value: '+977-9841331423',
                        onPressed: () {}),
                    ProfileMenu(
                        title: 'Gender', value: 'Male', onPressed: () {}),
                    ProfileMenu(
                        title: 'Date of Birth',
                        value: '15 Jestha, 2071',
                        onPressed: () {}),
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Center(
                      child: TextButton(
                          onPressed: () {},
                          child: const Text('Close Account',
                              style: TextStyle(color: Colors.red))),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
