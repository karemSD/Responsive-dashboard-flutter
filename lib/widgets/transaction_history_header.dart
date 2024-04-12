import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Transaction History",
          style: AppStyles.styleMedium20.copyWith(
            color: const Color(0XFF064060),
          ),
        ),
        Text(
          "See all",
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0XFF4EB7F2),
          ),
        )
      ],
    );
  }
}
