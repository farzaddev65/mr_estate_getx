
import 'package:sample_getx/core/constants.dart';
import 'package:sample_getx/core/themes/app_themes.dart';
import 'package:sample_getx/utils/utils.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

String roundNumber(final int numbers) {
  if (numbers < 1000) {
    return numbers.toString();
  } else if (numbers < 1000000) {
    final String n = (numbers / 1000).toStringAsFixed(0);
    return '$n k';
  } else {
    final String n = (numbers / 1000000).toStringAsFixed(0);
    return '$n m';
  }
}

void changeTheme() {
  setData(AppConstants.theme, Get.isDarkMode ? AppConstants.lightTheme : AppConstants.darkTheme);
  Get.changeTheme(Get.isDarkMode ? AppThemes.lightTheme() : AppThemes.darkTheme());

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Get.context!.theme.secondaryHeaderColor,
      systemNavigationBarColor: Get.context!.theme.secondaryHeaderColor,
      systemNavigationBarIconBrightness: Get.isDarkMode ? Brightness.dark : Brightness.light,
      systemNavigationBarDividerColor: Get.context!.theme.secondaryHeaderColor,
      systemNavigationBarContrastEnforced: false,
      systemStatusBarContrastEnforced: false,
    ),
  );//
}
