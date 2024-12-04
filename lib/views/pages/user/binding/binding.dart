import 'package:sample_getx/views/pages/user/controller/controller.dart';
import 'package:get/get.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(UserController.new);
    Get.put(UserController());
  }
}
