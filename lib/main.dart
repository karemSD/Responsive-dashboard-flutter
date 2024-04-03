import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashboardFlutter());
}

class ResponsiveDashboardFlutter extends StatelessWidget {
  const ResponsiveDashboardFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
