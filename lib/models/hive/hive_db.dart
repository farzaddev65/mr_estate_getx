import 'package:hive/hive.dart';

class TodoApp {
  List<dynamic> todoList = <dynamic>[];
  final Box<dynamic> myBox = Hive.box('todos');

  void loadData() {
    todoList = myBox.get('todolist');
  }

  void updateData() {
    myBox.put('TODOLIST', todoList);
  }
}
