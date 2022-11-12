import 'package:flutter/widgets.dart';

// Colors
const Color green = Color.fromRGBO(0, 128, 0, 1);
const Color white = Color.fromRGBO(255, 255, 255, 1);
const Color black = Color.fromRGBO(0, 0, 0, 1);

// Radius
final BorderRadius radius = BorderRadius.circular(20);

// TextStyle
TextStyle style({Color color = black, double size = 22}) =>
    TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold);
