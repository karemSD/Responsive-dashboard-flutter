
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Models/drawer_item_model.dart';
import '../utils/app_styles.dart';

class InActiveTile extends StatelessWidget {
  const InActiveTile({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.imagePath),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}

class ActiveTile extends StatelessWidget {
  const ActiveTile({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        width: 5,
        color: Color(0XFF4EB7F2),
      ),
      leading: SvgPicture.asset(drawerItemModel.imagePath),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleBold16,
      ),
    );
  }
}
