
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sample_getx/models/hive/user/user.dart';

class UserController extends GetxController{

  void addUser(BuildContext context) {
    final firstNameController = TextEditingController();
    final lastNameController = TextEditingController();
    final phoneNumberController = TextEditingController();
    Rx<String> role = 'buyer'.obs; // نقش پیش‌فرض: خریدار

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('افزودن کاربر'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: firstNameController,
                decoration: InputDecoration(labelText: 'نام'),
              ),
              TextField(
                controller: lastNameController,
                decoration: InputDecoration(labelText: 'نام خانوادگی'),
              ),
              TextField(
                controller: phoneNumberController,
                decoration: InputDecoration(labelText: 'شماره تلفن'),
              ),
              Row(
                children: [
                  Text('نقش:'),
                  Obx(() => Radio(
                    value: 'buyer',
                    groupValue: role.value,
                    onChanged: (value) {
                      role(value.toString());
                      update();
                    },
                  ),),
                  Text('خریدار'),
                  Obx(() => Radio(
                    value: 'seller',
                    groupValue: role.value,
                    onChanged: (value) {
                      role(value.toString());
                      update();
                    },
                  ),),
                  Text('فروشنده'),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('لغو'),
            ),
            ElevatedButton(
              onPressed: () {
                final user = User(
                  firstName: firstNameController.text,
                  lastName: lastNameController.text,
                  phoneNumber: phoneNumberController.text,
                  role: role.value,
                );

                if (role == 'buyer') {
                  Hive.box<User>('buyers').add(user);
                } else {
                  Hive.box<User>('sellers').add(user);
                }

                Navigator.of(context).pop();
              },
              child: Text('ذخیره'),
            ),
          ],
        );
      },
    );
  }


}
