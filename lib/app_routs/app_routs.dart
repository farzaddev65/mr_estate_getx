import 'package:sample_getx/views/pages/hive_example/binding/binding.dart';
import 'package:sample_getx/views/pages/hive_example/views/view.dart';
import 'package:sample_getx/views/pages/home/binding/binding.dart';
import 'package:sample_getx/views/pages/home/views/view.dart';
import 'package:sample_getx/views/pages/splash/binding/splash_binding.dart';
import 'package:sample_getx/views/pages/splash/views/splash_view.dart';
import 'package:get/get.dart' show GetPage;
import 'package:sample_getx/views/pages/user/binding/binding.dart';
import 'package:sample_getx/views/pages/user/views/view.dart';

class AppRouts {
  static const String root = '/root';
  static const String splash = '/splash';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String medias = '/medias';
  static const String mediaPlayer = '/mediaPlayer';
  static const String hiveExample = '/hiveExample';
  static const String user = '/user';

  static const String initial = splash;

  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<dynamic>(name: splash, page: () => const SplashView(), binding: SplashBinding()),
    GetPage<dynamic>(name: home, page: () => const HomeView(), binding: HomeBinding()),
    GetPage<dynamic>(name: hiveExample, page: () => const HiveExampleView(), binding: HiveExampleBinding()),
    GetPage<dynamic>(name: user, page: () => const UserView(), binding: UserBinding()),
    // GetPage<dynamic>(name: root, page: () => const RootView(), binding: RootBinding()),
    // GetPage<dynamic>(name: profile, page: () => const ProfileView(), binding: ProfileBinding()),
    // GetPage<dynamic>(name: medias, page: () => const MediasView(), binding: MediasBinding()),
    // GetPage<dynamic>(name: medias, page: () => const MediasView(), binding: MediasBinding()),
    // GetPage<dynamic>(name: mediaPlayer, page: () => const MediaPlayerView(), binding: MediaPlayerBinding()),
  ];
}
