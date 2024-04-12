import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/widgets/transaction_card.dart';

import '../Models/transaction_card_model.dart';
import '../utils/app_spaces.dart';
import '../utils/app_styles.dart';

class TransactionCardListView extends StatelessWidget {
  const TransactionCardListView({super.key});

  static Map<String, List<TransactoinCardModel>> dictionary2 = {
    "13 April 2022": [
      TransactoinCardModel(
        title: "Cash Withdrawal",
        amount: r"$20,129",
        date: "13 April 2022",
      ),
      TransactoinCardModel(
        title: "Cash Withdrawal",
        amount: r"$20,129",
        date: "13 April 2022",
      ),
    ],
    "12 April 2022": [
      TransactoinCardModel(
        title: "Cash Withdrawal",
        amount: r"$20,129",
        date: "13 April 2022",
      ),
      TransactoinCardModel(
        title: "Cash Withdrawal",
        amount: r"$20,129",
        date: "13 April 2022",
      ),
    ],
    "11 April 2022": [
      TransactoinCardModel(
        title: "Cash Withdrawal",
        amount: r"$20,129",
        date: "13 April 2022",
      ),
      TransactoinCardModel(
        title: "Cash Withdrawal",
        amount: r"$20,129",
        date: "13 April 2022",
      ),
    ],
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: dictionary2.length,
      itemBuilder: (context, index) {
        String key = dictionary2.keys.toList()[index];
        List<TransactoinCardModel> values = dictionary2[key]!;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              key,
              style: AppStyles.styleRegular12,
            ),
            SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: values.length,
              itemBuilder: (context, index) {
                TransactoinCardModel value = values[index];
                return TransactionCard(
                  user: value,
                );
              },
            ),
            SizedBox(height: 16),
          ],
        );
      },
    );
  }
}
