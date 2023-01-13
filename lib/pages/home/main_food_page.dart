import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width15, top: Dimensions.height10, right: Dimensions.width15, bottom: Dimensions.height15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const BigAppText(
                          text: 'Nigeria', color: AppColor.mainColor),
                      Row(
                        children: const [
                          SmallAppText(
                            text: 'Ibadan',
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: Dimensions.width20),
                  Container(
                    alignment: Alignment.center,
                    width: Dimensions.width40,
                    height: Dimensions.height40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColor.mainColor,
                    ),
                    child: Icon(Icons.search,
                        size: Dimensions.width25, color: Colors.white),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: SingleChildScrollView(
                child: FoodPageBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
