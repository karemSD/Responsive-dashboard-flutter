import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/widgets/cusrom_indictor.dart';

class CustomIndictorListView extends StatelessWidget {
  const CustomIndictorListView(
      {super.key, required this.length, required this.currentPageIndex});
  final int length;
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          length,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CustomIndictor(isActive: index == currentPageIndex),
              )),
    );
  }
}
