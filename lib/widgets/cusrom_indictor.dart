import 'package:flutter/material.dart';

class CustomIndictor extends StatelessWidget {
  const CustomIndictor({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 24 : 8,
      decoration: BoxDecoration(
          color: isActive ? const Color(0xFF5fbef3) : const Color(0xFFe8e8e8),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
