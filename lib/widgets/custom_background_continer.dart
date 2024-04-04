import 'package:flutter/material.dart';

class CustomBackGroundContainer extends StatelessWidget {
  const CustomBackGroundContainer({
    super.key,
    required this.child,  this.paddingValue,
  });
  final Widget child;
  final double? paddingValue;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:  EdgeInsets.all(paddingValue ?? 20 ),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: child);
  }
}
