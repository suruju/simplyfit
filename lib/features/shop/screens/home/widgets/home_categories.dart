import 'package:flutter/material.dart';
import 'package:getfit/common/widgets/image_text_widgets/category_image_text.dart';
import 'package:getfit/utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => CategoryStyleImageText(
          text: 'Shoes Category',
          imagePath: TImages.shoeIcon,
          onTap: () {},
        ),
      ),
    );
  }
}
