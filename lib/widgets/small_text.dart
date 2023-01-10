import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';

class SmallAppText extends StatelessWidget {
  final String text;
  final Color color;
  final double height;
  final double fontSize;

  const SmallAppText(
      {Key? key,
        required this.text,
        this.color = AppColor.textColor,
        this.fontSize = 12, this.height = 1.2 })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Roboto',
        color: color,
        height: height,
      ),
    );
  }
}
