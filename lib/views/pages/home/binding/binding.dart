import 'package:sample_getx/views/pages/hive_example/controller/controller.dart';
import 'package:sample_getx/views/pages/home/controller/controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(HomeController.new);
    Get.put(HomeController());
     Get.lazyPut<HiveExampleController>(HiveExampleController.new);
    Get.put(HiveExampleController());

  }
}
