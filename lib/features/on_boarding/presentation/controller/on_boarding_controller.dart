import 'dart:core';
import 'package:news_letter/config/dependency_injection.dart';
import 'package:news_letter/core/storage/local/app_settings_shared_preferences.dart';
import 'package:get/get.dart';
import '../../../../routes/routes.dart';

class OnBoardingController extends GetxController {
  final AppSettingsSharedPreferences _appSettingsSharedPreferences = instance<AppSettingsSharedPreferences>();

  Future<void> explore() async {
    await _appSettingsSharedPreferences.setOutBoardingViewed();
    Get.offAllNamed(Routes.exploreView);
  }
}
