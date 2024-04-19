import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../Models/income_detail_model.dart';
import '../utils/app_spaces.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key, required this.items});
  final List<IncomeDetailModel> items;

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(width),
      ),
    );
  }

  PieChartData getChartData(double width) {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              title: width >= SizeConfig.desktopBreakPoint && width < 1198
                  ? widget.items[0].value
                  : null,
              showTitle: width >= SizeConfig.desktopBreakPoint && width < 1198,
              radius: activeIndex == 0 ? 40 : 30,
              value: 40,
              color: widget.items[0].color),
          PieChartSectionData(
              title: width >= SizeConfig.desktopBreakPoint && width < 1198
                  ? widget.items[1].value
                  : null,
              showTitle: width >= SizeConfig.desktopBreakPoint && width < 1198,
              value: 25,
              radius: activeIndex == 1 ? 40 : 30,
              color: widget.items[1].color),
          PieChartSectionData(
            title: width >= SizeConfig.desktopBreakPoint && width < 1198
                ? widget.items[2].value
                : null,
            showTitle: width >= SizeConfig.desktopBreakPoint && width < 1198,
            radius: activeIndex == 2 ? 40 : 30,
            value: 20,
            color: widget.items[2].color,
          ),
          PieChartSectionData(
              title: width >= SizeConfig.desktopBreakPoint && width < 1198
                  ? widget.items[3].value
                  : null,
              radius: activeIndex == 3 ? 40 : 30,
              showTitle: width >= SizeConfig.desktopBreakPoint && width < 1198,
              value: 22,
              color: widget.items[3].color),
        ]);
  }
}
