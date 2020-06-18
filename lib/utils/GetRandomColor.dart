import 'dart:math';

import 'package:flutter/material.dart';

class GetRandomColor {
  bool a_change, r_change, g_change, b_change;
  final random = new Random();

  Color getColor() {
    return new Color.fromARGB(
        a_change ? random.nextInt(256) : 255,
        r_change ? random.nextInt(256) : 0,
        g_change ? random.nextInt(256) : 0,
        b_change ? random.nextInt(256) : 0);
  }

  GetRandomColor.allColors() {
    a_change = false;
    r_change = true;
    g_change = true;
    b_change = true;
  }

  GetRandomColor.customColors(bool a, bool r, bool g, bool b) {
    this.a_change = a;
    this.r_change = r;
    this.g_change = g;
    this.b_change = b;
  }
}
