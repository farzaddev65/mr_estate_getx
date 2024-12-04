import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';


class AppService extends GetxService {

  Future<AppService> init() async {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.cubeGrid
      ..loadingStyle = EasyLoadingStyle.dark
      ..boxShadow = <BoxShadow>[]
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.yellow
      ..backgroundColor = Colors.blue
      ..indicatorColor = Colors.yellow
      ..textColor = Colors.transparent
      ..maskColor = Colors.blue
      ..userInteractions = false
      ..dismissOnTap = false;

    // Core.myAudioHandler = await AudioService.init(
    //   builder: MyAudioHandler.new,
    //   config: const AudioServiceConfig(
    //     androidNotificationChannelId: 'com.musicapp.example',
    //     androidNotificationChannelName: 'Audio Playback',
    //     androidNotificationOngoing: true,
    //
    //   ),
    // );

    return this;
  }



}
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(final SecurityContext? context)=> super.createHttpClient(context)
    ..badCertificateCallback = (final X509Certificate cert, final String host, final int port)=> true;
}
