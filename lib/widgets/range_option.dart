import 'package:flutter/material.dart';

import '../utils/app_spaces.dart';
import '../utils/app_styles.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Monthly",
            style: AppStyles.styleMedium16,
          ),
          AppSpaces.horizontalSpace(0.5),
          Transform.rotate(
              angle: -1.57079633,
              child: const Icon(
                  color: Color(0XFF064060), Icons.arrow_back_ios_new_outlined)),
        ],
      ),
    );
  }
}
