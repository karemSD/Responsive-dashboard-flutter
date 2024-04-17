import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/Models/income_detail_model.dart';
import 'income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static List<IncomeDetailModel> items = [
    IncomeDetailModel(
      title: "Design Service",
      value: "40",
      color: const Color(0xFF2189c8),
    ),
    IncomeDetailModel(
      title: "Design product",
      value: "20",
      color: const Color(0xFF2189c8),
    ),
    IncomeDetailModel(
      title: "product royalti",
      value: "25",
      color: const Color(0xFF4db7f2),
    ),
    IncomeDetailModel(
      title: "other",
      value: "20",
      color: const Color(0xFF218933),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return IncomeDetailsItem(incomeDetailModel: items[index]);
      },
    );
  }
}
