import 'package:hive/hive.dart';

part 'user_info_models.g.dart';

@HiveType(typeId: 4)
class UserInfoModel {
  UserInfoModel({
    required this.fullName,
    required this.age,
    required this.city,
  });

  @HiveField(0)
  final String fullName;
  @HiveField(1)
  final int age;
  @HiveField(2)
  final String city;
}
