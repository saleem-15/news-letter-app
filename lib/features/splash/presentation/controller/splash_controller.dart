import 'package:news_letter/config/constants.dart';
import 'package:news_letter/config/dependency_injection.dart';
import 'package:news_letter/core/storage/local/app_settings_shared_preferences.dart';
import 'package:news_letter/routes/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final AppSettingsSharedPreferences _appSettingsSharedPreferences = instance<AppSettingsSharedPreferences>();

  @override
  void onInit() {
    super.onInit();

    Future.delayed(
      const Duration(
        seconds: Constants.splashDuration,
      ),
      () {
        if (_appSettingsSharedPreferences.getOutBoardingViewed()) {
          Get.offAllNamed(Routes.exploreView);
        } else {
          Get.offAllNamed(
            Routes.outBoardingView,
          );
        }
      },
    );
  }
}
