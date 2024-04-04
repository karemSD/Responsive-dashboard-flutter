import 'package:flutter/material.dart';

import '../Models/all_expenses_item_model.dart';
import '../utils/app_spaces.dart';
import '../utils/app_styles.dart';
import 'all_expenses_item_header.dart';

class InActiveExpeneseItem extends StatelessWidget {
  const InActiveExpeneseItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xFFF1F1F1),
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            iconColor: null,
            imagePath: allExpensesItemModel.imagePath,
          ),
          AppSpaces.verticalSpace5,
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleMedium16,
          ),
          AppSpaces.verticalSpace(.2),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14,
          ),
          AppSpaces.verticalSpace(.8),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}

class ActiveExpeneseItem extends StatelessWidget {
  const ActiveExpeneseItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFF4eb7f2),
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xFFF1F1F1),
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            iconColor: Colors.white,
            imagePath: allExpensesItemModel.imagePath,
          ),
          AppSpaces.verticalSpace5,
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleMedium16.copyWith(color: Colors.white),
          ),
          AppSpaces.verticalSpace(.2),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14
                .copyWith(color: const Color(0xFFFAFAFA)),
          ),
          AppSpaces.verticalSpace(.8),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
