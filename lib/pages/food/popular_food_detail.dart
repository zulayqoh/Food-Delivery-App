import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetailPage  extends StatelessWidget {
  const PopularFoodDetailPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/foo.jpg'),
                fit: BoxFit.fitHeight
              )
            ),
          ),
           Container(
            margin: EdgeInsets.only(left: 15, top: 30, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CircleAvatar(backgroundColor: Colors.black12, child: Icon(Icons.arrow_back_ios_new, color: AppColor.appIconColor, size: 15,),),
                CircleAvatar(backgroundColor: Colors.black12, child: Icon(Icons. shopping_cart_outlined, color: Colors.black38, size: 15),),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 470,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                color: Colors.white
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BigAppText(text: 'Bitter Orange Marinade'),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                              (index) => const Icon(
                            Icons.star,
                            size: 15,
                            color: AppColor.iconColor2,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const SmallAppText(text: '4.5'),
                      const SizedBox(width: 10),
                      const SmallAppText(text: '1234 comments'),
                    ],
                  ),
                  const SizedBox(height: 15),
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
                  const SizedBox(height: 20),
                  BigAppText(text: 'Introduce'),
                  const SizedBox(height: 30),
                  SmallAppText(text: 'Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with sliced onions')
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
