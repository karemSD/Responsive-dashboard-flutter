import 'package:flutter/material.dart';

import '../Models/income_detail_model.dart';
import '../utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({
    super.key,
    required this.incomeDetailModel,
  });

  final IncomeDetailModel incomeDetailModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        decoration: BoxDecoration(
            color: incomeDetailModel.color, shape: BoxShape.circle),
        width: 11,
        height: 11,
      ),
      title: Text(
        incomeDetailModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        "${incomeDetailModel.value.toStringAsFixed(0)}%",
        style: AppStyles.styleMedium16,
      ),
    );
  }
}

class IncomeDetailsItem2 extends StatelessWidget {
  const IncomeDetailsItem2({
    super.key,
    required this.incomeDetailModel,
  });

  final IncomeDetailModel incomeDetailModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        decoration: BoxDecoration(
            color: incomeDetailModel.color, shape: BoxShape.circle),
        width: 11,
        height: 11,
      ),
      title: Text(
        incomeDetailModel.title,
        style: AppStyles.styleRegular16,
      ),
    );
  }
}
