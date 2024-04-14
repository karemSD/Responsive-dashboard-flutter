import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/widgets/all_expneses_header.dart';
import 'package:responsive_dashboard_flutter/widgets/custom_background_continer.dart';

import 'income_chart.dart';
import 'income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpnesesHeader(
            title: "Income",
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: IncomeChart(),
                ),
                Expanded(child: IncomeDetails()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
