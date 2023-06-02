import 'package:news_letter/core/theme/manager_light_theme.dart';
import 'package:flutter/material.dart';

class ThemeService {
  ThemeMode getThemeMode() => ThemeMode.light;

  ThemeData getThemeData() => managerLightThemeData();
}
