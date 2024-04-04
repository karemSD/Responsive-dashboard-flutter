import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/Models/all_expenses_item_model.dart';

import 'in_active_and_active_expenese_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });
  final bool isSelected;
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveExpeneseItem(allExpensesItemModel: allExpensesItemModel)
        : InActiveExpeneseItem(allExpensesItemModel: allExpensesItemModel);
  }
}
