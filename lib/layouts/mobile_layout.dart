import 'package:flutter/widgets.dart';

import '../utils/app_spaces.dart';
import '../widgets/all_expenses_and_quick_invoice.dart';
import '../widgets/income_section.dart';
import '../widgets/my_cards_and_transaction_history.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AllExpensesAndQuickInvoiceSection(),
          AppSpaces.verticalSpace(1),
          const MyCardsAndTransactionHistory(),
          AppSpaces.verticalSpace(1),
          const IncomeSection(),
          // const IncomeSection(),
        ],
      ),
    );
  }
}
