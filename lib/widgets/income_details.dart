import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/Models/income_detail_model.dart';
import 'income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key, required this.items});

 final List<IncomeDetailModel> items;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((e) => IncomeDetailsItem(incomeDetailModel: e)).toList(),
    );
  }
}
 /**
  * 
  ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return IncomeDetailsItem(incomeDetailModel: items[index]);
      },
    );
  */


  class IncomeDetails2 extends StatelessWidget {
  const IncomeDetails2({super.key, required this.items});

 final List<IncomeDetailModel> items;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((e) => IncomeDetailsItem2(incomeDetailModel: e)).toList(),
    );
  }
}