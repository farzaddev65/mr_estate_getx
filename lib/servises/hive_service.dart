import 'package:sample_getx/core/constants.dart';
import 'package:sample_getx/core/core.dart';
import 'package:sample_getx/models/hive/device/devices.dart';
import 'package:sample_getx/models/hive/device_info/device_info_models.dart';
import 'package:sample_getx/models/hive/task/task.dart';
import 'package:sample_getx/models/hive/todo/todo_models.dart';
import 'package:sample_getx/models/hive/user/user.dart';
import 'package:sample_getx/models/hive/user_info/user_info_models.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:hive_flutter/hive_flutter.dart';


class HiveService extends GetxService {

  Future<HiveService> init() async {
    await Hive.initFlutter();
    // await Hive.openBox<Task>(AppConstants.HIVE_TODO);
    await Hive.openBox(AppConstants.HIVE_LOCAL_STORAGE);
    Hive.registerAdapter(UserAdapter());

    await Hive.openBox<User>('buyers');
    await Hive.openBox<User>('sellers');

    // Hive.registerAdapter(DevicesAdapter());
    // Hive.registerAdapter(DeviceInfoModelAdapter());
    // Hive.registerAdapter(TaskAdapter());
    // Hive.registerAdapter(TodoModelsAdapter());
    // Hive.registerAdapter(UserInfoModelAdapter());
    // Hive.registerAdapter(TodoModelsAdapter());

    return this;
  }

  void create(final String tile){

  }



}
