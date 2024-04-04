import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/widgets/all_expenses_item_list.dart';

import 'all_expneses_header.dart';

class AllExpneses extends StatelessWidget {
  const AllExpneses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          const AllExpnesesHeader(),
          AppSpaces.verticalSpace(.9),
          const AllExpensesItemList()
        ],
      ),
    );
  }
}
