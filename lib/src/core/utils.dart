import 'package:flutter/widgets.dart';

import 'colors.dart';
export 'package:zipcode/src/core/sizes.dart';
export 'package:zipcode/src/core/colors.dart';
export 'package:zipcode/src/core/shapes.dart';
export 'package:zipcode/src/core/types.dart';

// TextStyle
TextStyle textStyle({Color color = black, double size = 22}) => TextStyle(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.bold,
    );
