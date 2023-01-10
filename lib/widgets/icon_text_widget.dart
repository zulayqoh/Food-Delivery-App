import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const IconText(
      {Key? key,
      required this.icon,
      required this.text,
      this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: color),
        const SizedBox(width: 5),
        SmallAppText(text: text),
      ],
    );
  }
}
