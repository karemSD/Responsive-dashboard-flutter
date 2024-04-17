import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/scroller.dart';

class AdptiveLayoutWidget extends StatelessWidget {
  const AdptiveLayoutWidget({
    super.key,
    required this.desktopLayout,
    required this.tabletLayout,
    required this.mobileLayout,
  });
  final WidgetBuilder desktopLayout, tabletLayout, mobileLayout;
  //! Note about breakpoints : every design has own breakpoints so it is different form project to another based on the design
  static const double tabletBreakPoint = 660, desktopBreakPoint = 1110;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrians) {
      log("constrians width");
      log(constrians.maxWidth.toString());
      if (constrians.maxWidth > desktopBreakPoint) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: desktopLayout(context)),
        );
      } else if (constrians.maxWidth > tabletBreakPoint) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: tabletLayout(context),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: mobileLayout(context),
        );
      }
    });
  }
}
