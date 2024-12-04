
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sample_getx/utils/utils.dart';

class SplashController extends GetxController{
  Rx<bool> isDark=false.obs;
  Rx<bool> isTrue=true.obs;
  TextEditingController titleController=TextEditingController();
  TextEditingController subTitleController=TextEditingController();
  @override
  void onInit() async{
    super.onInit();
    // titleController.text=await getStorage('title');
    // subTitleController.text=await getStorage('subTitle');
    // isTrue.refresh();
    update();
  }


}
