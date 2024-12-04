import 'package:hive_flutter/hive_flutter.dart';
import 'package:sample_getx/core/extensions/extensions.dart';
import 'package:sample_getx/models/hive/task/task.dart';
import 'package:sample_getx/views/pages/hive_example/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class HiveExampleView extends GetView<HiveExampleController> {
  const HiveExampleView({super.key});

  @override
  Widget build(final BuildContext context) => Obx(
        () => controller.isLoaded.value
            ? Scaffold(
                floatingActionButton: FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () {
                    controller.createNewTask();
                  },
                ),
                body: ValueListenableBuilder(
                  valueListenable: controller.myBox.listenable(),
                  builder: (context, taskBox, child) {
                    return taskBox.values.toList().isNotEmpty
                        ? ListView.builder(
                            itemCount: taskBox.values.toList().length,
                            itemBuilder: (final BuildContext context, final int index) => _item(item: taskBox.values.toList()[index], index: index),
                          )
                        : const Center(
                            child: Text('Add new Items'),
                          );
                  },
                ),
              )
            : const SizedBox(),
      );

  Widget _textFormField({
    required final TextEditingController controller,
    required final String hint,
    final TextInputType? keyboardType,
    final Function(String param)? onChange,
  }) =>
      TextFormField(
        controller: controller,
        onChanged: onChange,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: hint, // Optional: Label for the field
          border: const OutlineInputBorder(), // Optional: Adds a border around the field
        ),
      );

  _item({required Task item, required int index}) => Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green,
        ),
        child: ListTile(
          title: Text(
            item.title,
            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          subtitle: Text(
            item.subtitle,
            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          leading: Checkbox(
              value: item.isCompleted,
              onChanged: (final bool? value) {
                item.isCompleted = value ?? false;
              }),
          trailing: Column(
            children: [
              Icon(Icons.edit).onTap(() => controller.updateTask(item),),
              Icon(Icons.delete).onTap(() => item.delete(),),
            ],
          ),
        ),
      );
}
