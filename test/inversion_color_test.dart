import 'package:colorscreen/utils/InversionColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Test inversion color", () {
    Color outColor =
        InversionColor().getInversionColor(Color.fromARGB(255, 100, 200, 55));
    expect(outColor, Color.fromARGB(255, 155, 55, 200));
  });
}
