import 'dart:ui';

import 'package:news_letter/core/util/size_util.dart';

class ManagerFontFamily {
  static const String fontFamily = 'Poppins';
}

class ManagerFontWeight {
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight w200 = FontWeight.w200;
  static const FontWeight w300 = FontWeight.w300;
}

class ManagerFontSize {
  static double s14 = SizeUtil.setFontSize(14);
  static double s16 = SizeUtil.setFontSize(16);
  static double s18 = SizeUtil.setFontSize(18);
  static double s20 = SizeUtil.setFontSize(20);
  static double s32 = SizeUtil.setFontSize(32);
  static double s52 = SizeUtil.setFontSize(52);
}
