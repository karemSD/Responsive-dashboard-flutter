import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/widgets/adptive_widget_layout.dart';

import '../widgets/desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    //return Container();
    return AdptiveLayoutWidget(mobileLayout: (context) => SizedBox() , tabletLayout: (context) => SizedBox(), desktopLayout: (context) => DesktopLayout() ,);
  }
}
