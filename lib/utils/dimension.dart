import 'package:get/get.dart';

class Dimension {
  /// height 737.4545454545455
  /// width 392.72727272727275
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  /// height factor = screenHeight/currentHeight
  static double pageViewContainerImage = screenHeight/3.685; /// 200
  static double pageViewContainerText = screenHeight/6.142; /// 120
  static double pageViewContainer = screenHeight/2.73; /// 270
}