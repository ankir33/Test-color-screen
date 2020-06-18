import 'package:flutter/material.dart';

class InversionColor {
  Color getInversionColor(Color inColor) {
    int a = inColor.alpha;
    int r = inColor.red;
    int g = inColor.green;
    int b = inColor.blue;

    return Color.fromARGB(a, 255 - r, 255 - g, 255 - b);
  }
}
