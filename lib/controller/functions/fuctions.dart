import 'package:flutter/material.dart';

Color myBackground(offset) {
  if (offset >= 220 && offset <= 320) {
    return Colors.white54;
  } else if (offset >= 320) {
    return Colors.white;
  }
  return Colors.transparent;
}