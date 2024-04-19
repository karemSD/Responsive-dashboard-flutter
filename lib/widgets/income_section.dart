import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/widgets/all_expneses_header.dart';
import 'package:responsive_dashboard_flutter/widgets/custom_background_continer.dart';

import '../Models/income_detail_model.dart';
import 'income_chart.dart';
import 'income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return const CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpnesesHeader(
            title: "Income",
          ),
          IncomeDetailsBody()
        ],
      ),
    );
  }
}

class IncomeDetailsBody extends StatelessWidget {
  const IncomeDetailsBody({
    super.key,
  });

  static List<IncomeDetailModel> items = [
    IncomeDetailModel(
      title: "Design Service",
      value: 40,
      color: const Color(0xFF2189c8),
    ),
    IncomeDetailModel(
      title: "Design product",
      value: 20,
      color: const Color(0xFF2189c8),
    ),
    IncomeDetailModel(
      title: "product royalti",
      value: 25,
      color: const Color(0xFF4db7f2),
    ),
    IncomeDetailModel(
      title: "other",
      value: 20,
      color: const Color(0xFF218933),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return (width >= SizeConfig.desktopBreakPoint && width < 1200)
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: IncomeChart(
                  items: items,
                ),
              ),
              AppSpaces.horizontalSpace(.5),
              Expanded(
                child: IncomeDetails2(
                  items: items,
                ),
              ),
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: IncomeChart(
                  items: items,
                ),
              ),
              AppSpaces.horizontalSpace(.5),
              Expanded(
                child: IncomeDetails(
                  items: items,
                ),
              ),
            ],
          );
  }
}
