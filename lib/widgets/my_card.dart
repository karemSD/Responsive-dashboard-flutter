import 'package:flutter/material.dart';

import '../utils/app_images.dart';
import '../utils/app_spaces.dart';
import '../utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "My Card",
          style: AppStyles.styleSemiBold20,
        ),
        AppSpaces.verticalSpace(.6),
        AspectRatio(
          aspectRatio: 420 / 215,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                    colorBlendMode: BlendMode.color,
                    Assets.imagesCardBackground,
                    color: const Color(0xFF5fbef3)),
              ),
              Positioned(
                top: 20, // adjust the position of the text as needed
                left: 20,
                child: Text(
                  'Name card',
                  style: AppStyles.styleRegular12.copyWith(color: Colors.white),
                ),
                
              ),
            ],
          ),
        ),
      ],
    );
  }
}
