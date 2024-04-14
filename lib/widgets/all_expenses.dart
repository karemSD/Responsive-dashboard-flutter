import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/widgets/all_expenses_item_list.dart';

import 'all_expneses_header.dart';
import 'custom_background_continer.dart';

class AllExpneses extends StatelessWidget {
  const AllExpneses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          const AllExpnesesHeader(
            title: "All Expenses",
          ),
          AppSpaces.verticalSpace(.9),
          const AllExpensesItemList()
        ],
      ),
    );
  }
}
