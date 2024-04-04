import 'package:flutter/material.dart';

import '../Models/all_expenses_item_model.dart';
import '../utils/app_images.dart';
import 'all_expenses_item.dart';

class AllExpensesItemList extends StatefulWidget {
  const AllExpensesItemList({super.key});

  static List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      color: const Color(0xFF4eb7f2),
      imagePath: Assets.imagesBalance,
      title: "Balance",
      date: "April 2022",
      price: "\$20,129",
    ),
    AllExpensesItemModel(
      color: Colors.white,
      imagePath: Assets.imagesIncome,
      title: "Income",
      date: "April 2022",
      price: "\$20,129",
    ),
    AllExpensesItemModel(
      color: Colors.white,
      imagePath: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      price: "\$20,129",
    ),
  ];

  @override
  State<AllExpensesItemList> createState() => _AllExpensesItemListState();
}

class _AllExpensesItemListState extends State<AllExpensesItemList> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: AllExpensesItemList.items
            .asMap()
            .entries
            .map(
              (e) => Expanded(
                  child: GestureDetector(
                onTap: () {
                  selected = e.key;
                  setState(() {});
                  print("object");
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: AllExpensesItem(
                    isSelected: selected == e.key,
                    allExpensesItemModel: e.value,
                  ),
                ),
              )),
            )
            .toList());
  }
}
