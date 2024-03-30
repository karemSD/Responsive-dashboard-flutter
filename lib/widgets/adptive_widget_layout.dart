 import 'package:flutter/material.dart';

class AdptiveLayoutWidget extends StatelessWidget {
  const AdptiveLayoutWidget({
    super.key, required this.desktopLayout, required this.tabletLayout, required this.mobileLayout,
  });
  final WidgetBuilder desktopLayout, tabletLayout, mobileLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrians) {
      print("constrians width");
      print(constrians.maxWidth);
      if (constrians.maxWidth > 900) {
        return  Padding(
          padding: const EdgeInsets.all(10),
          child: desktopLayout(context),
        );
      } else if (constrians.maxWidth > 400) {
        return  Padding(
          padding: const EdgeInsets.all(10),
          child: tabletLayout(context),
        );
      } else {
        return  Padding(
          padding: const EdgeInsets.all(10),
          child: mobileLayout(context),
        );
      }
    });
  }
}
