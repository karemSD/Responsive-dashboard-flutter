import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_images.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';
import 'package:responsive_dashboard_flutter/widgets/active_and_inactive_tile.dart';
import 'package:responsive_dashboard_flutter/widgets/user_info_list_tile.dart';

import '../Models/drawer_item_model.dart';
import '../Models/user_info_list_tile_model.dart';
import 'drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoListTileModel: UserInfoListTileModel(
                  imagePath: Assets.imagesAvatar3,
                  title: "Lekan OKeowo",
                  subTitle: "demo@gmail.com"),
            ),
          ),
          SliverToBoxAdapter(child: AppSpaces.verticalSpace(0.5)),
          const DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 15,
                )),
                const InActiveTile(
                  drawerItemModel: DrawerItemModel(
                      title: "Settings", imagePath: Assets.imagesSettings),
                ),
                const InActiveTile(
                  drawerItemModel: DrawerItemModel(
                      title: "LogOut", imagePath: Assets.imagesLogout),
                ),
                AppSpaces.verticalSpace5
              ],
            ),
          )
        ],
      ),
    );
  }
}
