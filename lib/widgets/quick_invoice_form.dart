import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/utils/app_styles.dart';

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
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: const Color(0xFF50b8f2),
                padding: const EdgeInsets.all(25),
                child: Text(
                  "Send Money",
                  style: AppStyles.styleRegular16.copyWith(color: Colors.white),
                ),
                // shape: ,
              ),
            )
            // const Expanded(
            //   child: TitleTextField(
            //     title: "Customer Email",
            //     hintText: "Type customer email",
            //   ),
            // ),
          ],
        ),
        // Row(
        //   children: [
        //     MaterialButton(
        //       onPressed: () {},
        //       color: const Color(0xFF50b8f2),
        //       child: Text(
        //         "Send Money",
        //         style: AppStyles.styleRegular14.copyWith(color: Colors.white),
        //       ),
        //       padding: EdgeInsets.all(20),
        //       // shape: ,
        //     )
        //   ],
        // )
      ],
    );
  }
}
