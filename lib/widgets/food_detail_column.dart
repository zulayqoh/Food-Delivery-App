
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_text_widget.dart';

class FoodDetailColumn extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double bigFontSize;

  const FoodDetailColumn({
    Key? key, this.icon = Icons.star_border, this.iconColor = Colors.yellow, this.bigFontSize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:  MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigAppText(text: 'Bitter Orange Marinade', fontSize: bigFontSize,),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  icon,
                  size: Dimensions.width15,
                  color: iconColor,
                ),
              ),
            ),
            SizedBox(width: Dimensions.width10),
            SmallAppText(text: '4.5'),
            SizedBox(width: Dimensions.width10),
            SmallAppText(text: '1234 comments'),
          ],
        ),
        const SizedBox(height: 0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconText(
                text: 'Normal', icon: Icons.circle, color: AppColor.iconColor1),
            IconText(
                text: '1.7km',
                icon: Icons.location_pin,
                color: AppColor.mainColor),
            IconText(
                text: '32min',
                icon: Icons.access_time,
                color: AppColor.iconColor2),
          ],
        )
      ],
    );
  }
}


class FoodDetailsColumn extends StatelessWidget {

  const FoodDetailsColumn({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BigAppText(text: 'Bitter Orange Marinade'),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                    (index) =>  Icon(
                  Icons.star,
                  size: Dimensions.width15,
                  color: AppColor.iconColor2,
                ),
              ),
            ),
            SizedBox(width: Dimensions.width10),
            SmallAppText(text: '4.5'),
            SizedBox(width: Dimensions.width10),
            SmallAppText(text: '1234 comments'),
          ],
        ),
        SizedBox(height: Dimensions.height15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconText(
                text: 'Normal',
                icon: Icons.circle,
                color: AppColor.iconColor1),
            IconText(
                text: '1.7km',
                icon: Icons.location_pin,
                color: AppColor.mainColor),
            IconText(
                text: '32min',
                icon: Icons.access_time,
                color: AppColor.iconColor2),
          ],
        ),
      ],
    );
  }
}