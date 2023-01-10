import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.8);
  late double _currentPageValue = 0.0;
  final double _scaleFactor = 0.8;

  final double _height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
    WidgetsFlutterBinding.ensureInitialized();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 260,
      child: PageView.builder(
          controller: pageController,
          itemBuilder: (context, index) {
            return _buildPageItem(
              index,
            );
          }),
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currentScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currentTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else {
      var currentScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 220,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: index.isEven ? AppColor.sampleColor : Colors.purple,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food1.jpeg'),
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              height: 120,
              margin: const EdgeInsets.only(left: 25, right: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white
                  // color: index.isEven ? AppColor.sampleColor : Colors.purple,
                  ),
              child: Column(
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
                            Icons.star_border,
                            size: 15,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const SmallAppText(text: '4.5'),
                      const SizedBox(width: 10),
                      const SmallAppText(text: '1234 comments'),
                    ],
                  ),
                  const SizedBox(height: 20),
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

  @override
  void dispose() {
    ///implement dispose
    super.dispose();
    pageController.dispose();
  }
}
