import 'package:flutter/material.dart';
import 'package:getfit/common/widgets/appbar/appbar.dart';
import 'package:getfit/common/widgets/custom_shapes/container/home_header_container.dart';
import 'package:getfit/common/widgets/layouts/list_tiles/settings_menu_tile.dart';
import 'package:getfit/common/widgets/layouts/list_tiles/user_profile_tile.dart';
import 'package:getfit/common/widgets/text/section_heading.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            HomeHeaderContainer(
                child: Column(
              children: [
                CustomAppbar(
                  title: Text('Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white)),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                ///Profile section
                const UserProfileTile(),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            )),

            ///Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const SectionHeading(
                      text: 'Account Settings', showViewAll: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SettingsMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'My Address',
                      subtitle: 'Set shopping delivery address',
                      onTap: () {}),
                  SettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subtitle: 'Add, remove products and move to checkout',
                      onTap: () {}),
                  SettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subtitle: 'In-progress and Completed Orders',
                      onTap: () {}),
                  SettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subtitle: 'Withdraw balance to registered bank account',
                      onTap: () {}),
                  SettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subtitle: 'List of all the discounted coupons',
                      onTap: () {}),
                  SettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subtitle: 'Set any kind of notification message',
                      onTap: () {}),
                  SettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subtitle: 'Manage data usage and connected accounts',
                      onTap: () {}),

                  ///APP SETTINGS
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const SectionHeading(
                      text: 'App Settings', showViewAll: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const SettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subtitle: 'Upload Data to your Cloud Firebase'),
                  SettingsMenuTile(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      subtitle: 'Set recommendation based on location',
                      trailing: Switch(value: true, onChanged: (value) {})),
                  SettingsMenuTile(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subtitle: 'Search result is safe for all ages',
                      trailing: Switch(value: false, onChanged: (value) {})),
                  SettingsMenuTile(
                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subtitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged: (value) {})),

                  ///LOGOUT
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {}, child: const Text('Logout'))),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
