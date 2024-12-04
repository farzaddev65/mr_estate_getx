import 'package:sample_getx/views/pages/hive_example/controller/controller.dart';
import 'package:get/get.dart';

class HiveExampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HiveExampleController>(HiveExampleController.new);
    Get.put(HiveExampleController());
  }
}
