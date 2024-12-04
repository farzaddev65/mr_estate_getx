import 'package:hive/hive.dart';

part 'todo_models.g.dart';

@HiveType(typeId: 1)
class TodoModels {
  TodoModels({required this.text});

  @HiveField(0)
  final String text;
}
