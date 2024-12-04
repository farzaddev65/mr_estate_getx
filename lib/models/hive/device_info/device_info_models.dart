import 'package:hive/hive.dart';

part 'device_info_models.g.dart';

@HiveType(typeId: 3)
class DeviceInfoModel {
  DeviceInfoModel({
    required this.name,
    required this.status,
    required this.model,
    required this.type,
    required this.isActive,
  });

  @HiveField(0)
  final String name;
  @HiveField(1)
  final int status;
  @HiveField(2)
  final String model;
  @HiveField(3)
  final int type;
  @HiveField(4)
  final bool isActive;
}
