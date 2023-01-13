import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final double iconSize;
  final double backgroundSize;

  const AppIcon(
      {Key? key,
      required this.icon,
      this.iconColor = AppColor.appIconColor,
      this.backgroundColor = AppColor.appIconBackgroundColor,
      this.iconSize = 16, this.backgroundSize = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(backgroundSize/2),
      ),
      height: backgroundSize,
      width: backgroundSize,
      child: Icon(
        icon,
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}
