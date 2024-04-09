import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_images.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/utils/app_styles.dart';
import 'package:responsive_dashboard_flutter/widgets/custom_background_continer.dart';
import 'package:responsive_dashboard_flutter/widgets/my_card.dart';

class PartThree extends StatelessWidget {
  const PartThree({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [AppSpaces.verticalSpace(.6),
         const MyCard()],
      ),
    );
  }
}
