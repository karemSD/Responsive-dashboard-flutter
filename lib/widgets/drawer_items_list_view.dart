import 'package:flutter/material.dart';

import '../Models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> drawerItmes = [
    const DrawerItemModel(
        title: "Dashboard", imagePath: Assets.imagesDashboard),
    const DrawerItemModel(
        title: "My Transaction", imagePath: Assets.imagesMyTransctions),
    const DrawerItemModel(
        title: "Statistics", imagePath: Assets.imagesStatistics),
    const DrawerItemModel(
        title: "Wallet Account", imagePath: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: "My Investments", imagePath: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: drawerItmes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                  print(index);
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: DrawerItem(
                  isActive: activeIndex == index,
                  drawerItemModel: drawerItmes[index]),
            ),
          );
        });
  }
}
