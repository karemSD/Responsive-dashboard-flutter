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
            style: AppStyles.styleMedium16(context),
          ),
          AppSpaces.verticalSpace(.2),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          AppSpaces.verticalSpace(.8),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24(context),
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
            style: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          ),
          AppSpaces.verticalSpace(.2),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14
                (context).copyWith(color: const Color(0xFFFAFAFA)),
          ),
          AppSpaces.verticalSpace(.8),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
