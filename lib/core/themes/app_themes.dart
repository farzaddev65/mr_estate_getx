import 'package:sample_getx/core/constants.dart';
import 'package:sample_getx/core/themes/app_colors.dart';
import 'package:sample_getx/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme() {
    const TextStyle baseStyle = TextStyle(color: AppColorsLight.primaryDark);
    return ThemeData(
      fontFamily: isPersianLang() ? AppConstants.fontShabnamFD : null,
      // scaffoldBackgroundColor: AppColorsLight.background,
      cardColor: AppColorsLight.card,
      primaryColorDark: AppColorsLight.primaryDark,
      shadowColor: AppColorsLight.shadow,

      hintColor: AppColorsLight.hint,
      highlightColor: AppColorsLight.card,
      disabledColor: AppColorsLight.hint,
      secondaryHeaderColor: AppColorsLight.primaryDark,
      iconTheme: const IconThemeData(color: AppColorsLight.primaryDark),
      cupertinoOverrideTheme: const CupertinoThemeData(brightness: Brightness.dark),
      tabBarTheme: TabBarTheme(
          labelColor: Colors.pink[800],
          labelStyle: TextStyle(color: Colors.pink[800]), // color for text
          indicator: const UnderlineTabIndicator(
              // color for indicator (underline)
              borderSide: BorderSide(color: Colors.purple))),
      textTheme: TextTheme(
        displayLarge: baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold,color:AppColorsLight.primaryDark ),
        displayMedium: baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w500,color:AppColorsLight.primaryDark ),
        displaySmall: baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w300,color:AppColorsLight.primaryDark ),
        headlineLarge: baseStyle.copyWith(fontSize: 18, fontWeight: FontWeight.bold,color:AppColorsLight.primaryDark ),
        headlineMedium: baseStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w500,color:AppColorsLight.primaryDark ),
        headlineSmall: baseStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w300,color:AppColorsLight.primaryDark ),
        titleLarge: baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold,color:AppColorsLight.primaryDark ),
        titleMedium: baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w500,color:AppColorsLight.primaryDark ),
        titleSmall: baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w300,color:AppColorsLight.primaryDark ),
        labelLarge: baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.bold,color:AppColorsLight.primaryDark ),
        labelMedium: baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w500,color:AppColorsLight.primaryDark ),
        labelSmall: baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w300,color:AppColorsLight.primaryDark ),
        bodyLarge: baseStyle.copyWith(fontSize: 12, fontWeight: FontWeight.bold,color:AppColorsLight.primaryDark ),
        bodyMedium: baseStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w500,color:AppColorsLight.primaryDark ),
        bodySmall: baseStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w300,color:AppColorsLight.primaryDark ),
      ),
      cardTheme: CardTheme(clipBehavior: Clip.hardEdge, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      outlinedButtonTheme: const OutlinedButtonThemeData(
        style: ButtonStyle(padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(vertical: 12, horizontal: 20))),
      ),
      dividerTheme: DividerThemeData(color: AppColorsLight.primaryDark.withOpacity(0.2)),
      appBarTheme: const AppBarTheme(backgroundColor: AppColorsLight.background, foregroundColor: Colors.black, elevation: 0),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }

  static ThemeData darkTheme() {
    final TextStyle baseStyle = TextStyle(
      color: AppColorsDark.primaryDark,
      fontFamily: isPersianLang() ? AppConstants.fontShabnamFD : null,
    );

    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppColorsDark.background,
      primaryColorDark: AppColorsDark.primaryDark,
      cardColor: AppColorsDark.card,
      shadowColor: AppColorsDark.shadow,
      hintColor: AppColorsDark.hint,
      hoverColor: AppColorsDark.hint,
      highlightColor: AppColorsDark.card,
      disabledColor: AppColorsDark.hint,
      secondaryHeaderColor: Colors.white,
      iconTheme: const IconThemeData(color: AppColorsDark.primaryDark),
      textTheme: TextTheme(
        displayLarge: baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold,color:AppColorsDark.primaryDark ),
        displayMedium: baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w500,color:AppColorsDark.primaryDark ),
        displaySmall: baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w300,color:AppColorsDark.primaryDark ),
        headlineLarge: baseStyle.copyWith(fontSize: 18, fontWeight: FontWeight.bold,color:AppColorsDark.primaryDark ),
        headlineMedium: baseStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w500,color:AppColorsDark.primaryDark ),
        headlineSmall: baseStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w300,color:AppColorsDark.primaryDark ),
        titleLarge: baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold,color:AppColorsDark.primaryDark ),
        titleMedium: baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w500,color:AppColorsDark.primaryDark ),
        titleSmall: baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w300,color:AppColorsDark.primaryDark ),
        labelLarge: baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.bold,color:AppColorsDark.primaryDark ),
        labelMedium: baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w500,color:AppColorsDark.primaryDark ),
        labelSmall: baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w300,color:AppColorsDark.primaryDark ),
        bodyLarge: baseStyle.copyWith(fontSize: 12, fontWeight: FontWeight.bold,color:AppColorsDark.primaryDark ),
        bodyMedium: baseStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w500,color:AppColorsDark.primaryDark ),
        bodySmall: baseStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w300,color:AppColorsDark.primaryDark ),
      ),
      cardTheme: CardTheme(clipBehavior: Clip.hardEdge, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      outlinedButtonTheme: const OutlinedButtonThemeData(
        style: ButtonStyle(padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(vertical: 12, horizontal: 20))),
      ),
      appBarTheme: const AppBarTheme(backgroundColor: AppColorsDark.background, foregroundColor: Colors.white, elevation: 0),
      dividerTheme: DividerThemeData(color: AppColorsDark.primaryDark.withOpacity(0.2)),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: AppColorsDark.primaryDark)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: AppColorsDark.primaryDark)),
      ),
    );
  }

  static ThemeData getTheme() {
    if (getString(AppConstants.theme) == AppConstants.lightTheme) return AppThemes.lightTheme();
    if (getString(AppConstants.theme) == AppConstants.darkTheme) return AppThemes.darkTheme();
    return AppThemes.lightTheme();
  }
}
