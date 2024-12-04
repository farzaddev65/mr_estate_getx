import 'package:hive/hive.dart';

part 'devices.g.dart';

@HiveType(typeId: 0)
class Devices extends HiveObject {
  Devices({
    required this.title,
    required this.model,
    required this.code,
    required this.createdAtDate,
    required this.isCompleted,
  });

  @HiveField(0)
  final String title;

  @HiveField(1)
  String model;

  @HiveField(2)
  String code;

  @HiveField(3)
  DateTime createdAtDate;

  @HiveField(4)
  bool isCompleted;
}
