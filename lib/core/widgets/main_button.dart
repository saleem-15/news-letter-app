import 'package:news_letter/core/extensions/extensions.dart';
import 'package:news_letter/core/resources/manager_sizes.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget MainButton({
  required Widget child,
  void Function()? onPressed,
  BorderRadiusGeometry? borderRadius,
  Color? color,
  double? minWidth,
  double? height,
  double? elevation,
  EdgeInsetsGeometry? padding,
}) {
  return MaterialButton(
    hoverElevation: 0,
    highlightElevation: 0,
    padding: padding,
    onPressed: onPressed.onNull(),
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius ??
          BorderRadius.circular(
            ManagerRadius.r12,
          ),
    ),
    color: color.onNull(),
    minWidth: minWidth.onNull(),
    height: height.onNull(),
    elevation: elevation.onNull(),
    child: child,
  );
}
