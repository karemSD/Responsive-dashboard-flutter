import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/widgets/all_expenses.dart';
import 'package:responsive_dashboard_flutter/widgets/custom_drawer.dart';
import 'package:responsive_dashboard_flutter/widgets/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        AppSpaces.horizontalSpace(1.5),
        Expanded(
            flex: 4,
            child: Column(
              children: [
                const AllExpneses(),
                AppSpaces.verticalSpace(1),
                const QuickInvoice()
              ],
            )),
        const Expanded(
          flex: 3,
          child: SizedBox(),
        ),
      ],
    );
  }
}
