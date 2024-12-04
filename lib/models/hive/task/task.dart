import 'package:hive/hive.dart';
import 'package:sample_getx/core/constants.dart';

part 'task.g.dart';

@HiveType(typeId: 2)
class Task extends HiveObject {
  Task(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.createdAtDate,
      required this.isCompleted});


  /// ID
  @HiveField(0)
  final String id;

  /// TITLE
  @HiveField(1)
  String title;

  /// SUBTITLE
  @HiveField(2)
  String subtitle;


  /// CREATED AT DATE
  @HiveField(3)
  DateTime createdAtDate;

  /// IS COMPLETED
  @HiveField(4)
  bool isCompleted;
}
