import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.imagePath, required this.iconColor});
  final String imagePath;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            color: iconColor == null
                ? Colors.grey.withOpacity(.2)
                : Colors.white.withOpacity(.2),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: SvgPicture.asset(
              colorFilter: ColorFilter.mode(
                  iconColor ?? const Color(0xFF79c8f4), BlendMode.srcIn),
              imagePath),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: iconColor == null ? null : Colors.white,
        )
      ],
    );
  }
}
