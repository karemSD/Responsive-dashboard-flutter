import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/widgets/custom_drawer.dart';

import '../utils/app_spaces.dart';
import 'mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        AppSpaces.horizontalSpace(1.5),
        const Expanded(
            flex: 3,
            child: MobileLayout()),
      ],
    );
  }
}
