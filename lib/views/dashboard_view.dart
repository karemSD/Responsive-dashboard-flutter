import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/layouts/mobile_layout.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/widgets/adptive_widget_layout.dart';

import '../layouts/tablet_layout.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: MediaQuery.sizeOf(context).width < 660
            ? AppBar(
                elevation: 0,
                backgroundColor: const Color(0xFF4eb7f2),
              )
            : null,
        backgroundColor: const Color(0xFFf7f9fa),
        drawer: const CustomDrawer(),
        body: AdptiveLayoutWidget(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const DesktopLayout(),
        ));
  }
}
