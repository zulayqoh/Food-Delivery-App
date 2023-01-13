import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_text_widget.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.width15, vertical: Dimensions.height10 ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/food8.jpeg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
              height: Dimensions.height140,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              height: Dimensions.height100,
              padding: EdgeInsets.symmetric(
                  vertical: Dimensions.height5, horizontal: Dimensions.width10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              margin: EdgeInsets.symmetric(vertical: Dimensions.height10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BigAppText(
                      text:
                      'Nutrition fruit meal and so on and so forth.'),
                  const SmallAppText(
                      text: 'With chinese characteristics'),
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}