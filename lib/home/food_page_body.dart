import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimension.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.8);
  late double _currentPageValue = 0.0;
  final double _scaleFactor = 0.8;

  final double _height = Dimension.pageViewContainerImage;

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
    return Column(
      children: [
        Container(
          color: Colors.white,
          height: Dimension.pageViewContainer,
          child: PageView.builder(
              controller: pageController,
              itemBuilder: (context, index) {
                return _buildPageItem(
                  index,
                );
              }),
        ),
        const SizedBox(height: 5),
        SmoothPageIndicator(
          controller: pageController,
          // PageController
          count: 6,
          // forcing the indicator to use a specific direction
          textDirection: TextDirection.ltr,
          effect: const WormEffect(
              dotHeight: 9,
              dotWidth: 9,
              type: WormType.thin,
              activeDotColor: AppColor.mainColor
            // strokeWidth: 5
              ),
          onDotClicked: (index) {},
        ),
        const SizedBox(height: 5),
        Container(
          margin: const EdgeInsets.only(left: 15, top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const BigAppText(text: 'Popular'),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                width: 3,
                height: 3,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(2.5),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: const SmallAppText(text: 'Food pairing'),
              ),
            ],
          ),
        ),
      ],
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
            height: Dimension.pageViewContainerImage,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food1.jpeg'),
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, left: 15, right: 15, bottom: 5),
              height: Dimension.pageViewContainerText,
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 5,
                        color: Colors.black),
                    BoxShadow(offset: Offset(5, 0), color: Colors.white),
                    BoxShadow(offset: Offset(-5, 0), color: Colors.white),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BigAppText(text: 'Bitter Orange Marinade'),
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
                  const SizedBox(height: 0),
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
