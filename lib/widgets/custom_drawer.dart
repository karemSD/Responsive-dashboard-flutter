import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_images.dart';
import 'package:responsive_dashboard_flutter/widgets/user_info_list_tile.dart';

import '../Models/user_info_list_tile_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
              userInfoListTileModel: UserInfoListTileModel(
                  imagePath: Assets.imagesAvatar3,
                  title: "Lekan OKeowo",
                  subTitle: "demo@gmail.com"))
        ],
      ),
    );
  }
}
