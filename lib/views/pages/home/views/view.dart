import 'package:sample_getx/views/components/components.dart';
import 'package:sample_getx/views/components/tab_bar_widget.dart';
import 'package:sample_getx/views/pages/hive_example/views/view.dart';
import 'package:sample_getx/views/pages/home/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: TabBarWidget(
          selectTabIndex: (final int index) {
            debugPrint('DDDDDD $index');
          },
          items: <TabBarItem>[
            TabBarItem(title: 'مثال Hive', page: const HiveExampleView()),
            TabBarItem(title: 'User', page: Container(color: Colors.blue)),
            TabBarItem(
                title: 'Hi',
                page: Container(
                  color: Colors.blue,
                  child: AvatarWidget(
                    result: (final String path) {},
                  ),
                )),
            // TabBarItem(title: 'Hi', page: Container(color: Colors.blue)),
            // TabBarItem(title: 'Hi', page: Container(color: Colors.blue)),
            // TabBarItem(title: 'Hi', page: Container(color: Colors.blue)),
          ],
        ),
      );
}
