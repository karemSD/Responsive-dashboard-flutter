import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            color: Colors.grey.withOpacity(.2),
            // Colors.white.withOpacity(.2),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: const Icon(Icons.add, color: Color(0xFF79c8f4)),
        ),
      ],
    );
  }
}
