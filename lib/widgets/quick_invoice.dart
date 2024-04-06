import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/widgets/custom_background_continer.dart';
import 'package:responsive_dashboard_flutter/widgets/latest_transction.dart';
import 'package:responsive_dashboard_flutter/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard_flutter/widgets/quick_invoice_header.dart';
import 'package:responsive_dashboard_flutter/widgets/title_text_field.dart';

import 'custom_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransction(),
        Divider(
          height: 30,
        ),
        QuickInvoiceForm()
      ],
    ));
  }
}
