import 'package:flutter/material.dart';

import '../Models/transaction_card_model.dart';
import '../utils/app_styles.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key, required this.user});
  final TransactoinCardModel user;
  @override
  Widget build(BuildContext context) {
    return Card(
        //margin: EdgeInsets.zero,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: const Color(0XFFFAFAFA),
        child: ListTile(
          //contentPadding: EdgeInsets.symmetric(horizontal: 5),
          title: Text(user.title, style: AppStyles.styleSemiBold16(context)),
          trailing: Text(user.amount,
              style: AppStyles.styleSemiBold20(context).copyWith(
                color: true ? Colors.red : Colors.green,
              )),
          //isThreeLine: true,
          subtitle: Text(
            user.date,
            style: AppStyles.styleRegular14(context),
          ),
        ));
  }
}
