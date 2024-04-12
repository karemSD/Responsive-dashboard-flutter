import 'package:flutter/material.dart';

class TransactoinCardModel {
  final String title;
  final String amount;
  final String date;
 bool? isCome=false;

  TransactoinCardModel(
      {required this.title, required this.amount, required this.date ,@required this.isCome});
}
