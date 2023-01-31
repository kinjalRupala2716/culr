import 'package:flutter/material.dart';

class AppColors {
  String golden = "#FFC103";
  String appBlack = "#111111";
  String hintColor = "#8C8C8C";
}

class GetColor {
  String? hexColor;
  getColorFromHex(hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

