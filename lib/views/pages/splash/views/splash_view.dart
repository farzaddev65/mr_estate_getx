import 'package:sample_getx/app_routs/app_routs.dart';
import 'package:sample_getx/core/extensions/extensions.dart';
import 'package:sample_getx/core/futurs/other_futurs.dart';
import 'package:sample_getx/core/themes/app_icons.dart';
import 'package:sample_getx/core/themes/app_images.dart';
import 'package:sample_getx/utils/utils.dart';
import 'package:sample_getx/views/components/components.dart';
import 'package:sample_getx/views/components/drawer.dart';
import 'package:sample_getx/views/pages/splash/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('تست'),
          actions: <Widget>[
            const Icon(Icons.brightness_5).onTap(
              changeTheme,
            ),
            Obx(() => controller.isDark.value ? const Icon(Icons.brightness_5) : const Icon(Icons.brightness_2)).onTap(
              () {
                Get.toNamed(AppRouts.home);
              },
            ),
            const Icon(Icons.access_time_filled_outlined).onTap(
              () {
                Get.toNamed(AppRouts.user);
              },
            ),
          ],
        ),
        drawer: DrawerWidget(
          list: <DrawerItems>[
            DrawerItems(title: 'خانه', icon: AppIcons.share, onTap: () {}),
            DrawerItems(title: 'پروفایل', icon: AppIcons.harvest, onTap: () {}),
          ],
        ),
        body: Obx(
          () => controller.isTrue.value
              ? Container(
                  color: Colors.blue,
                  child: Center(
                    child: ListView(
                      children: <Widget>[
                        UImage(
                          AppImages.bookImage,
                          size: 300,
                        ),
                        // UImage(
                        //   'https://wwww.fff.com',
                        //   size: 50,
                        // ),
                        UTextFormField(
                          labelText: 'سلام',
                          controller: controller.titleController,
                        ),
                        UTextFormField(
                          labelText: 'خوبی',
                          controller: controller.subTitleController,
                        ),
                        button(
                          title: 'Save',
                          onTap: () => setStorage('title', controller.titleController.text),
                        ),
                        button(
                          title: 'Save2',
                          onTap: () => setStorage('subTitle', controller.subTitleController.text),
                        ),
                        button(
                          title: 'load',
                          onTap: () async {
                            controller.titleController.text = await getStorage('title');
                            controller.subTitleController.text = await getStorage('subTitle');
                            controller.update();
                          },
                        ),
                      ],
                    ),
                  ),
                )
              : SizedBox(),
        ),
      );
}
