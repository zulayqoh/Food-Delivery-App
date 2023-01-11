import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/colors.dart';
import 'big_text.dart';
import 'icon_text_widget.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10 ),
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
              height: 140,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              height: 100,
              padding: const EdgeInsets.symmetric(
                  vertical: 5, horizontal: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              margin: const EdgeInsets.symmetric(vertical: 10),
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