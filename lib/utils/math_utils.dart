import 'package:flutter/material.dart';
import 'package:get/get.dart';

double getHorizontalSize(double px) {
  return px * ((MediaQuery.of(Get.context!).size.width) / 390);
}

double getVerticalSize(double px) {
  num statusBar = MediaQuery.of(Get.context!).viewPadding.top;
  num screenHeight = (MediaQuery.of(Get.context!).size.height) - statusBar;
  return px * (screenHeight / 844);
}

double getFontSize(double px) {
  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}

double getSize(double px) {
  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}
