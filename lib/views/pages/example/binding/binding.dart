import 'package:sample_getx/views/pages/example/controller/controller.dart';
import 'package:get/get.dart';

class ExampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExampleController>(ExampleController.new);
    Get.put(ExampleController());
  }
}
