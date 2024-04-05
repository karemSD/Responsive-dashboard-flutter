import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_styles.dart';
import 'package:responsive_dashboard_flutter/widgets/latest_transctions_list_view.dart';

class LatestTransction extends StatelessWidget {
  const LatestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transction",
          style: AppStyles.styleRegular16,
        ),
        LatestTransctionsListView(),
      ],
    );
  }
}
