import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/utils/app_styles.dart';
import 'package:responsive_dashboard_flutter/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hintText});
  final String title, hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        AppSpaces.verticalSpace(.8),
        CustomTextField(hintText: hintText),
      ],
    );
  }
}
