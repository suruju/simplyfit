import 'package:flutter/material.dart';
import 'package:getfit/common/widgets/images/circular_images.dart';
import 'package:getfit/utils/constants/colors.dart';
import 'package:getfit/utils/constants/image_strings.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImageWidget(
          image: TImages.user, width: 50, height: 50, padding: 0),
      title: Text(
        'Shaurya Raghubansh',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text('shaurya.raghubansh@gmail.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: TColors.white)),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.edit,
            color: TColors.white,
          )),
    );
  }
}
