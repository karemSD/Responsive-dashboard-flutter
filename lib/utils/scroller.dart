import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
 // Override behavior methods and getters like dragDevices
 @override
 Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

// how to use with widget
/**
 * 

    ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child : Widget()
    )
 * 
 */