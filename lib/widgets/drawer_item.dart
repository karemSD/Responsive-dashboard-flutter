import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard_flutter/Models/drawer_item_model.dart';
import 'package:responsive_dashboard_flutter/utils/app_styles.dart';

import 'active_and_inactive_tile.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveTile(drawerItemModel: drawerItemModel)
        : InActiveTile(drawerItemModel: drawerItemModel);
  }
}
