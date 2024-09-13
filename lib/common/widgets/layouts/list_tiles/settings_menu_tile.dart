import 'package:flutter/material.dart';
import 'package:getfit/utils/constants/colors.dart';

class SettingsMenuTile extends StatelessWidget {
  final IconData icon;
  final String title, subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  const SettingsMenuTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle,
      this.trailing,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: TColors.primary, size: 28),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
