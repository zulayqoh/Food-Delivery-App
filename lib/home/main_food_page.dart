import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
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
      body: Container(
        margin: const EdgeInsets.only(top: 30, bottom: 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
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
                  const SizedBox(width: 20),
                  Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red,
                        gradient: const SweepGradient(
                            center: Alignment.center,
                            colors: [
                              Colors.greenAccent,
                              Colors.blueAccent,
                              Colors.red,
                              Colors.deepPurple,
                              Colors.yellow
                            ])),
                    child:
                        const Icon(Icons.search, size: 40, color: Colors.black),
                  ),
                ],
              ),
            ),
            const FoodPageBody(),
          ],
        ),
      ),
    );
  }
}
