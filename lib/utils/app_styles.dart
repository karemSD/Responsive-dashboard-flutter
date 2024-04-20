import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/utils/app_spaces.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(BuildContext context) {
  return TextStyle(
    color: Color(0XFF064060),
    fontFamily: "Montserrat",
    fontSize: SizeConfig().getResponsiveText(context, fontSizeBase: 16),
    fontWeight: FontWeight.w400,
  );
}

static TextStyle styleMedium16(BuildContext context) {
  return TextStyle(
    color: Color(0XFF064060),
    fontFamily: "Montserrat",
    fontSize: SizeConfig().getResponsiveText(context, fontSizeBase: 16),
    fontWeight: FontWeight.w500,
  );
}

static TextStyle styleMedium20(BuildContext context) {
  return TextStyle(
    color: Color(0XFFFFFFFF),
    fontFamily: "Montserrat",
    fontSize: SizeConfig().getResponsiveText(context, fontSizeBase: 20),
    fontWeight: FontWeight.w500,
  );
}

static TextStyle styleSemiBold16(BuildContext context) {
  return TextStyle(
    color: Color(0XFF064060),
    fontFamily: "Montserrat",
    fontSize: SizeConfig().getResponsiveText(context, fontSizeBase: 16),
    fontWeight: FontWeight.w600,
  );
}

static TextStyle styleSemiBold20(BuildContext context) {
  return TextStyle(
    color: Color(0XFF064060),
    fontFamily: "Montserrat",
    fontSize: SizeConfig().getResponsiveText(context, fontSizeBase: 20),
    fontWeight: FontWeight.w600,
  );
}

static TextStyle styleRegular12(BuildContext context) {
  return TextStyle(
    color: Color(0XFFAAAAAA),
    fontFamily: "Montserrat",
    fontSize: SizeConfig().getResponsiveText(context, fontSizeBase: 12),
    fontWeight: FontWeight.w400,
  );
}

static TextStyle styleSemiBold24(BuildContext context) {
  return TextStyle(
    color: Color(0XFF4EB7F2),
    fontFamily: "Montserrat",
    fontSize: SizeConfig().getResponsiveText(context, fontSizeBase: 24),
    fontWeight: FontWeight.w600,
  );
}

static TextStyle styleBold16(BuildContext context) {
  return TextStyle(
    color: Color(0XFF4EB7F2),
    fontFamily: "Montserrat",
    fontSize: SizeConfig().getResponsiveText(context, fontSizeBase: 16),
    fontWeight: FontWeight.w700,
  );
}

static TextStyle styleSemiBold18(BuildContext context) {
  return TextStyle(
    color: Color(0XFFFFFFFF),
    fontFamily: "Montserrat",
    fontSize: SizeConfig().getResponsiveText(context, fontSizeBase: 18),
    fontWeight: FontWeight.w600,
  );
}

static TextStyle styleRegular14(BuildContext context) {
  return TextStyle(
    color: Color(0XFFAAAAAA),
    fontFamily: "Montserrat",
    fontSize: SizeConfig().getResponsiveText(context, fontSizeBase: 14),
    fontWeight: FontWeight.w400,
  );
}

}
