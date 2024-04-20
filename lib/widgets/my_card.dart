import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard_flutter/widgets/custom_indictor_listview.dart';

import '../utils/app_images.dart';
import '../utils/app_spaces.dart';
import '../utils/app_styles.dart';
import 'cusrom_indictor.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //TODO MyCard
        //? you can do this or instead of this do as thrawt samy did (make contianer with image decoration in then child will be column and texts inside )

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
                  style: AppStyles.styleRegular12(context).copyWith(color: Colors.white),
                ),
              ),
              Positioned(
                top: 40, // adjust the position of the text as needed
                left: 20,
                child: Text(
                  'Syah Bandi',
                  style: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
                ),
              ),
              Positioned(
                top: 30,
                right: 33,
                child: SvgPicture.asset(Assets.imagesGallery),
              ),
              Positioned(
                bottom: 40, // adjust the position of the text as needed
                right: 20,
                child: Text(
                  '0918 8124 0042 8129',
                  style: AppStyles.styleMedium20(context).copyWith(color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 20, // adjust the position of the text as needed
                right: 20,
                child: Text(
                  '12/20 - 124',
                  style: AppStyles.styleRegular12(context).copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
