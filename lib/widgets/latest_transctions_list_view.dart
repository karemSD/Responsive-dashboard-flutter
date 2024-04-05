import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/Models/user_info_list_tile_model.dart';
import 'package:responsive_dashboard_flutter/utils/app_images.dart';
import 'package:responsive_dashboard_flutter/widgets/user_info_list_tile.dart';

class LatestTransctionsListView extends StatelessWidget {
  const LatestTransctionsListView({super.key});
  static List<UserInfoListTileModel> userInfoListTileModelList = [
    UserInfoListTileModel(
        title: "Madrani Andi",
        subTitle: "Madraniandi20@gmail",
        imagePath: Assets.imagesAvatar1),
    UserInfoListTileModel(
        title: "Josua Nunito",
        subTitle: "Josuanunito@gmail",
        imagePath: Assets.imagesAvatar2),
    UserInfoListTileModel(
        title: "Madrani Andi",
        subTitle: "Madraniandi20@gmail",
        imagePath: Assets.imagesAvatar3),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: userInfoListTileModelList
              .map(
                (e) => IntrinsicWidth(
                  child: UserInfoListTile(
                    userInfoListTileModel: e,
                  ),
                ),
              )
              .toList()),
    );
  }
}
