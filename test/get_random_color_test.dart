import 'package:colorscreen/utils/GetRandomColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Test getColor all", () {
    Color resultColor = GetRandomColor.allColors().getColor();
    bool result =
        (resultColor.value >= 0 && resultColor.value <= Colors.white.value)
            ? true
            : false;
    expect(result, true);
  });

  test("Test getColor custom", () {
    Color resultColor =
        GetRandomColor.customColors(false, true, true, false).getColor();
    bool result =
        (resultColor.value >= 0 && resultColor.value <= Colors.white.value)
            ? true
            : false;
    expect(result, true);
  });
}
