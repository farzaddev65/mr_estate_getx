import 'dart:io';

import 'package:sample_getx/app_routs/app_routs.dart';
import 'package:sample_getx/core/themes/app_themes.dart';
import 'package:sample_getx/generated/l10n.dart';
import 'package:sample_getx/servises/app_service.dart';
import 'package:sample_getx/servises/hive_service.dart';
import 'package:sample_getx/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';


Future<void> initServices() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();


  /// Register Hive Adapter
  // Hive.registerAdapter<Task>(TaskAdapter());
  await Get.putAsync(() => AppService().init());
  await Get.putAsync(() => HiveService().init());
}

void main() async{
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(final BuildContext context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: AppRouts.routes,
        initialRoute: AppRouts.initial,
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          S.delegate,
        ],
        supportedLocales: const <Locale>[Locale("en"), Locale('fa')],
        locale: Locale(getString('locale') ?? 'en'),
        theme: AppThemes.getTheme(),
        themeMode: ThemeMode.light,
        builder: EasyLoading.init(),
      );
}
