import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color textColor, backgroundColor;
  final Color? highlightColor;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    this.highlightColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      highlightColor: highlightColor,
      highlightElevation: 5,
      hoverElevation: 0,
      elevation: 0,
      onPressed: onPressed,
      color: backgroundColor,
      padding: const EdgeInsets.all(25),
      shape: RoundedRectangleBorder(
        side: const BorderSide(
            color: Colors.white, width: 3, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style: AppStyles.styleRegular16(context).copyWith(color: textColor),
      ),
    );
  }
}
