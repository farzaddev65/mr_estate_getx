import 'package:sample_getx/core/constants.dart';
import 'package:sample_getx/models/hive/hive_db.dart';
import 'package:sample_getx/models/hive/task/task.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class HiveExampleController extends GetxController {
  Rx<bool> isLoaded = true.obs;
  final Box<Task> myBox = Hive.box<Task>(AppConstants.HIVE_TODO);
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subTitleController = TextEditingController();

  void saveTask() {
    Task task = Task(
      id: '0',
      title: titleController.text,
      subtitle: subTitleController.text,
      createdAtDate: DateTime.now(),
      isCompleted: false,);
    myBox.add(task);
  }
  void updateTask(Task task) {

    showDialog(
      context: Get.context!,
      builder: (final BuildContext context) =>
          AlertDialog(
            backgroundColor: Colors.blue,
            content: SizedBox(
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.red,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Add New Task'),
                  ),
                  TextField(
                    controller: subTitleController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.red,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Add New Task'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {
                          task.title=titleController.text;
                          task.subtitle=subTitleController.text;
                          task.save();
                        },
                        color: Colors.red,
                        child: const Text('Save'),
                      ),
                      const SizedBox(width: 8),
                      MaterialButton(
                        onPressed: Get.back,
                        color: Colors.red,
                        child: const Text('Cancel'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
    );



  }

  void createNewTask() {
    showDialog(
      context: Get.context!,
      builder: (final BuildContext context) =>
          AlertDialog(
            backgroundColor: Colors.blue,
            content: SizedBox(
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.red,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Add New Task'),
                  ),
                  TextField(
                    controller: subTitleController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.red,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Add New Task'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      MaterialButton(
                        onPressed: saveTask,
                        color: Colors.red,
                        child: const Text('Save'),
                      ),
                      const SizedBox(width: 8),
                      MaterialButton(
                        onPressed: Get.back,
                        color: Colors.red,
                        child: const Text('Cancel'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
    );
  }
}
