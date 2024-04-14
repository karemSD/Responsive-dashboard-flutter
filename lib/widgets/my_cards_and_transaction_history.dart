import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/widgets/custom_background_continer.dart';
import 'package:responsive_dashboard_flutter/widgets/my_card_section.dart';
import 'package:responsive_dashboard_flutter/widgets/transaction_history_header.dart';

import 'transaction_cards_list_view.dart';

class MyCardsAndTransactionHistory extends StatelessWidget {
  const MyCardsAndTransactionHistory({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const MyCardSection(),
        const Divider(
          height: 40,
        ),
        const TransactionHistoryHeader(),
        AppSpaces.verticalSpace(1),
       const Expanded(child:  TransactionCardListView()),   
      ]),
    );
  }
}
