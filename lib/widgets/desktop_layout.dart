import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/widgets/all_expenses.dart';
import 'package:responsive_dashboard_flutter/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard_flutter/widgets/custom_drawer.dart';
import 'package:responsive_dashboard_flutter/widgets/part_three.dart';
import 'package:responsive_dashboard_flutter/widgets/quick_invoice.dart';

import 'my_cards_and_transaction_history.dart';

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
          flex: 7,
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            //   physics: AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                //  fillOverscroll: true,
                hasScrollBody: false,
                child: Row(
                  children: [
                    const Expanded(
                      flex: 4, child: AllExpensesAndQuickInvoiceSection()),
                    AppSpaces.horizontalSpace(1.5),
                     const Expanded(flex: 3, child: PartThree()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
