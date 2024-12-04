import 'package:hive_flutter/hive_flutter.dart';
import 'package:sample_getx/models/hive/user/user.dart';
import 'package:sample_getx/views/components/tab_bar_widget.dart';
import 'package:sample_getx/views/pages/user/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class UserView extends GetView<UserController> {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    final buyersBox = Hive.box<User>('buyers');
    final sellersBox = Hive.box<User>('sellers');

    return Scaffold(
      appBar: AppBar(title: Text('مدیریت کاربران')),
      floatingActionButton: ElevatedButton(
        onPressed: () => controller.addUser(context),
        child: Text('افزودن کاربر'),
      ),
      body: TabBarWidget(
        selectTabIndex: (final int index) {
          debugPrint('DDDDDD $index');
        },
        items: [
          TabBarItem(
            title: 'Seller',
            page:  ValueListenableBuilder(
              valueListenable: sellersBox.listenable(),
              builder: (context, Box<User> box, _) {
                final sellers = box.values.toList();
                return ListView.builder(
                  itemCount: sellers.length,
                  itemBuilder: (context, index) {
                    final seller = sellers[index];
                    return ListTile(
                      title: Text('${seller.firstName} ${seller.lastName}'),
                      subtitle: Text(seller.phoneNumber),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          seller.delete();
                        },
                      ),
                    );
                  },
                );
              },
            )
          ),
           TabBarItem(
            title: 'Buyer',
            page:  ValueListenableBuilder(
              valueListenable: buyersBox.listenable(),
              builder: (context, Box<User> box, _) {
                final buyers = box.values.toList();
                return ListView.builder(
                  itemCount: buyers.length,
                  itemBuilder: (context, index) {
                    final buyer = buyers[index];
                    return ListTile(
                      title: Text('${buyer.firstName} ${buyer.lastName}'),
                      subtitle: Text(buyer.phoneNumber),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          buyer.delete();
                        },
                      ),
                    );
                  },
                );
              },
            )
          ),

        ],
      ),
    );
  }
}
