import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/utils/app_styles.dart';
import 'package:responsive_dashboard_flutter/widgets/range_option.dart';

class AllExpnesesHeader extends StatelessWidget {
  const AllExpnesesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: RangeOption(),
        )
      ],
    );
  }
}
