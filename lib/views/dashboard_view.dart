import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/widgets/adptive_widget_layout.dart';

import '../widgets/custom_drawer.dart';
import '../widgets/desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        drawer: const CustomDrawer(),
        body: AdptiveLayoutWidget(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DesktopLayout(),
        ));
  }
}
