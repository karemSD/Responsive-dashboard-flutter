import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/widgets/all_expneses_header.dart';
import 'package:responsive_dashboard_flutter/widgets/custom_background_continer.dart';

class IncomeSection extends StatefulWidget {
  const IncomeSection({super.key});

  @override
  State<IncomeSection> createState() => _IncomeSectionState();
}

class _IncomeSectionState extends State<IncomeSection> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AllExpnesesHeader(
            title: "Income",
          ),
          SizedBox(height: 75, child: 
          PieChart(getChartData()))
        ],
        
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            log("it works");
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          },
          
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 0 ? 60 : 40,
            value: 40,
            color: const Color(0xFF2189c8),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 20,
            radius: activeIndex == 1 ? 60 : 40,
            color: const Color(0xFF4db7f2),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 20,
            radius: activeIndex == 2 ? 60 : 40,
            color: const Color(0xFF218933),
          ),
          PieChartSectionData(
            radius: activeIndex == 3 ? 60 : 40,
            showTitle: false,
            value: 20,
            color: const Color(0xFF2189c8),
          ),
        ]);
  }
}
