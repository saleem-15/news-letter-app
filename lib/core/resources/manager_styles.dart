import 'package:news_letter/core/resources/manager_colors.dart';
import 'package:news_letter/core/resources/manager_fonts.dart';
import 'package:flutter/material.dart';

TextStyle _textStyle({
  required double fontSize,
  required String fontFamily,
  required FontWeight fontWeight,
  required Color color,
  required TextDecoration decoration,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
    decoration: decoration,
  );
}

TextStyle getRegularTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
}) {
  return _textStyle(
    fontSize: fontSize,
    fontFamily: ManagerFontFamily.fontFamily,
    fontWeight: ManagerFontWeight.regular,
    color: color,
    decoration: decoration,
  );
}

TextStyle getLogoTextStyle({
  double? fontSize,
}) {
  return _textStyle(
    fontSize: fontSize ?? ManagerFontSize.s52,
    fontFamily: ManagerFontFamily.fontFamily,
    fontWeight: ManagerFontWeight.bold,
    color: ManagerColors.indigo,
    decoration: TextDecoration.none,
  );
}

TextStyle getBoldTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
}) {
  return _textStyle(
    fontSize: fontSize,
    fontFamily: ManagerFontFamily.fontFamily,
    fontWeight: ManagerFontWeight.bold,
    color: color,
    decoration: decoration,
  );
}

TextStyle getMediumTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
}) {
  return _textStyle(
    fontSize: fontSize,
    fontFamily: ManagerFontFamily.fontFamily,
    fontWeight: ManagerFontWeight.medium,
    color: color,
    decoration: decoration,
  );
}

TextStyle getTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
  FontWeight? weight,
}) {
  return _textStyle(
    fontSize: fontSize,
    fontFamily: ManagerFontFamily.fontFamily,
    fontWeight: weight ?? ManagerFontWeight.medium,
    color: color,
    decoration: decoration,
  );
}
