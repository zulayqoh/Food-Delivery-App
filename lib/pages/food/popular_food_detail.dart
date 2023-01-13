import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/food_detail_column.dart';
import '../../widgets/small_text.dart';

/// Use of Stack widget with Align widget for positioning it's children
class PopularFoodDetailPage extends StatelessWidget {
  const PopularFoodDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Dimensions.height350,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/foo.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Dimensions.width15,
                top: Dimensions.height40,
                right: Dimensions.width15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: AppColor.appIconColor,
                    size: Dimensions.width15,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: Icon(Icons.shopping_cart_outlined,
                      color: Colors.black38, size: Dimensions.width15),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width20,
                  vertical: Dimensions.height20),
              height: Dimensions.height440,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(Dimensions.height20)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Dimensions.height100,
                    child: FoodDetailColumn(
                        icon: Icons.star, iconColor: AppColor.iconColor2),
                  ),
                  SizedBox(height: Dimensions.height20),
                  BigAppText(text: 'Introduce'),
                  SizedBox(height: Dimensions.height30),
                  SmallAppText(
                      text:
                          'Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with sliced onions')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Use of Stack widget with Positioned widget for positioning it's children

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: Dimensions.popularDetailContainer + Dimensions.height20,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/foo.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
              left: Dimensions.width20,
              right: Dimensions.width20,
              top: Dimensions.height40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                      icon: Icons.arrow_back_ios_new,
                      backgroundColor:
                          AppColor.appIconBackgroundColor.withOpacity(0.8)),
                  AppIcon(
                      icon: Icons.shopping_cart_outlined,
                      backgroundColor:
                          AppColor.appIconBackgroundColor.withOpacity(0.8))
                ],
              )),
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.popularDetailContainer,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(Dimensions.width20),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Dimensions.height120,
                    child: FoodDetailColumn(
                        bigFontSize: Dimensions.font26,
                        icon: Icons.star,
                        iconColor: AppColor.iconColor2),
                  ),
                  SizedBox(height: Dimensions.height15),
                  BigAppText(text: 'Introduce'),
                  SizedBox(height: Dimensions.height20),
                  Text(
                    'Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with sliced onions. Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with sliced onionsChicken marinated in a spiced yoghurt is placed in a large pot, then layered with sliced onions',
                    style: TextStyle(color: Colors.black45),
                  ),
                  SizedBox(height: 0),
                ],
              ),
            ),
          ), // Positioned(child: child)
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.height100,
        decoration: BoxDecoration(
          color: AppColor.buttonBackgroundColor,
          borderRadius:
              BorderRadius.vertical(top: Radius.circular(Dimensions.width20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimensions.width20),
              padding: EdgeInsets.symmetric(
                  vertical: Dimensions.width15, horizontal: Dimensions.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.width15),
                  color: Colors.white),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColor.signColor),
                  SizedBox(width: Dimensions.width5),
                  BigAppText(text: '0'),
                  SizedBox(width: Dimensions.width5),
                  Icon(Icons.add, color: AppColor.signColor),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimensions.width20),
              padding: EdgeInsets.symmetric(
                  vertical: Dimensions.width15, horizontal: Dimensions.width20),
              decoration: BoxDecoration(
                color: AppColor.mainColor,
                borderRadius: BorderRadius.circular(Dimensions.width15),
              ),
              child: BigAppText(
                text: '£0.08 Add to cart',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
