import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xFFfafafa),
        filled: true,
        contentPadding: const EdgeInsets.all(20),
        hintStyle: AppStyles.styleRegular16(context).copyWith(
          color: Color(0xffAAAAAAA),
          fontWeight: FontWeight.w500,
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
