import 'package:news_letter/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:news_letter/core/resources/manager_colors.dart';
import 'package:news_letter/core/resources/manager_styles.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManagerColors.splashViewBackgroundColor,
      body: Center(
        child: Text(
          Constants.appName,
          style: getLogoTextStyle(),
        ),
      ),
    );
  }
}
