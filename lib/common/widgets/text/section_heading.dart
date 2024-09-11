import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  final String text, viewAllText;
  final bool showViewAll;
  final VoidCallback? onPressed;
  final Color? textColor;

  const SectionHeading({
    super.key,
    required this.text,
    this.viewAllText = 'View all',
    this.showViewAll = true,
    this.onPressed,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showViewAll)
          TextButton(
              onPressed: onPressed,
              child: Text(
                viewAllText,
                style: Theme.of(context).textTheme.bodySmall,
              )),
      ],
    );
  }
}
