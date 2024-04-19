import 'package:flutter/material.dart';

class SizeConfig {
  //! Note about breakpoints : every design has own breakpoints so it is different form project to another based on the design
  static double tabletBreakPoint = 660, desktopBreakPoint = 1110;
  static double? screenHeight;
  static double? screenWidth;
  static double? defualtSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    //! Note about screenHeight and screenWidth that is build one time on mobile or tablet but on web or windows this will now work until hot restert so make new varibles listen to media query when you work on web or windows
    screenHeight = MediaQuery.sizeOf(context).height;
    screenWidth = MediaQuery.sizeOf(context).width;
    orientation = MediaQuery.of(context).orientation;
    defualtSize = orientation == Orientation.landscape
        ? screenHeight! * .024
        : screenWidth! * .024;

    print("Defualt Size is : $defualtSize");
  }
}

class AppSpaces {
  static SizedBox verticalSpace(double size) =>
      SizedBox(height: SizeConfig.defualtSize! * size);

  static SizedBox horizontalSpace(double size) =>
      SizedBox(width: SizeConfig.defualtSize! * size);

  static final verticalSpace5 = verticalSpace(2);
  static final verticalSpace10 = verticalSpace(3);
  static final verticalSpace15 = verticalSpace(5);
  static final verticalSpace20 = verticalSpace(10);
  static final verticalSpace40 = verticalSpace(15);

  static final horizontalSpace5 = horizontalSpace(2);
  static final horizontalSpace10 = horizontalSpace(3);
  static final horizontalSpace15 = horizontalSpace(5);
  static final horizontalSpace20 = horizontalSpace(10);
  static final horizontalSpace40 = horizontalSpace(15);
}
