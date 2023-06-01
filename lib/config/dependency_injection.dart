import 'package:news_letter/core/internet_checker/internet_checker.dart';
import 'package:news_letter/core/storage/local/app_settings_shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

final instance = GetIt.instance;

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  instance.registerLazySingleton<SharedPreferences>(
    () => sharedPreferences,
  );

  instance.registerLazySingleton<AppSettingsSharedPreferences>(
    () => AppSettingsSharedPreferences(instance()),
  );

  // TODO: ONLY FOR TEST
  // AppSettingsSharedPreferences appSettingsSharedPreferences =
  //     instance<AppSettingsSharedPreferences>();
  // appSettingsSharedPreferences.clear();

  instance.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      InternetConnectionCheckerPlus(),
    ),
  );
}
