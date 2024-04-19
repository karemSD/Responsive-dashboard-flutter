import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/utils/scroller.dart';

class AdptiveLayoutWidget extends StatelessWidget {
  const AdptiveLayoutWidget({
    super.key,
    required this.desktopLayout,
    required this.tabletLayout,
    required this.mobileLayout,
  });
  final WidgetBuilder desktopLayout, tabletLayout, mobileLayout;
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrians) {
      log("constrians width");
      log(constrians.maxWidth.toString());
      if (constrians.maxWidth > SizeConfig.desktopBreakPoint) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: desktopLayout(context)),
        );
      } else if (constrians.maxWidth > SizeConfig.tabletBreakPoint) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: ScrollConfiguration(
            behavior: MyCustomScrollBehavior(),
            child: ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: tabletLayout(context),
            ),
          ),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: ScrollConfiguration(
              behavior: MyCustomScrollBehavior(), child: mobileLayout(context)),
        );
      }
    });
  }
}
