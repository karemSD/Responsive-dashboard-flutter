import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/widgets/income_section.dart';

import 'my_cards_and_transaction_history.dart';

class PartThree extends StatelessWidget {
  const PartThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(flex: 3, child: MyCardsAndTransactionHistory()),
        AppSpaces.verticalSpace(1),
        const Expanded(flex: 1, child: IncomeSection()),
      ],
    );
  }
}
