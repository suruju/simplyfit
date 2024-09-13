import 'package:flutter/material.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/device/device_utility.dart';
import 'package:getfit/utils/helpers/helper_functions.dart';

class TabBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabs;
  const TabBarWidget({
    super.key,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuctions.isDarkMode(context);
    return Material(
      child: TabBar(
        labelColor: dark ? TColors.white : TColors.primary,
        indicatorColor: TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
        isScrollable: true,
        tabs: tabs,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
