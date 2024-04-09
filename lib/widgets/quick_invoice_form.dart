import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/utils/app_styles.dart';
import 'package:responsive_dashboard_flutter/widgets/custom_buttons.dart';

import 'title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: TitleTextField(
                title: "Customer name",
                hintText: "Type customer name",
              ),
            ),
            AppSpaces.horizontalSpace(1),
            const Expanded(
              child: TitleTextField(
                title: "Customer Email",
                hintText: "Type customer email",
              ),
            ),
          ],
        ),
        AppSpaces.verticalSpace(.4),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                onPressed: () {},
                textColor: const Color(0xFF50b8f2),
                backgroundColor: Colors.transparent,
                text: "Add more details",
              ), // shape: ,
            ),
            AppSpaces.horizontalSpace(1),
            Expanded(
              child: CustomButton(
                highlightColor: Colors.green.withOpacity(.4),
                onPressed: () {},
                backgroundColor: const Color(0xFF50b8f2),
                textColor: Colors.white,
                text: "Send Money",
              ), // shape: ,
            ),
          ],
        )
      ],
    );
  }
}

