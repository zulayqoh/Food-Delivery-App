import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';

class BigAppText extends StatelessWidget {
  final String text;
  final Color color;
  final TextOverflow overflow;
  final double fontSize;

  const BigAppText(
      {Key? key,
      required this.text,
      this.color = AppColor.mainBlackColor,
      this.overflow = TextOverflow.ellipsis,
      this.fontSize = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        overflow: overflow,
        color: color,
      ),
    );
  }
}
