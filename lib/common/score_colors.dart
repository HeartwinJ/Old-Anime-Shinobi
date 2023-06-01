import 'package:flutter/material.dart';

extension ScoreColors on MaterialColor {
  static MaterialColor fromScore(int score) {
    switch (score) {
      case 10:
        return Colors.green;
      case 9:
        return Colors.lightGreen;
      case 8:
        return Colors.lime;
      case 7:
        return Colors.yellow;
      case 6:
        return Colors.amber;
      case 5:
        return Colors.orange;
      case 4:
        return Colors.deepOrange;
      default:
        return Colors.red;
    }
  }
}
