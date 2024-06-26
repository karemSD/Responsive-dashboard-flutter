import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/utils/app_styles.dart';
import 'package:responsive_dashboard_flutter/widgets/range_option.dart';

class AllExpnesesHeader extends StatelessWidget {
  const AllExpnesesHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20(context),
        ),
       const Spacer(),
      const  Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: RangeOption(),
        )
      ],
    );
  }
}
