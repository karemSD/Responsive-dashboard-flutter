import 'package:flutter/material.dart';

class AllExpensesItemModel {
  final String imagePath;
  final Color color;
  final String title;
  final String date;
  final String price;

  AllExpensesItemModel( {required this.title, required this.date, required this.price,required this.imagePath, required this.color});
}
