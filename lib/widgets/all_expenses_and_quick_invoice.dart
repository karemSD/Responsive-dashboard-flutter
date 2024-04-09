import 'package:flutter/material.dart';

import '../utils/app_spaces.dart';
import 'all_expenses.dart';
import 'quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AllExpneses(),
        AppSpaces.verticalSpace(1),
        const QuickInvoice()
      ],
    );
  }
}
