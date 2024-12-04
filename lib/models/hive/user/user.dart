import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
class User extends HiveObject {
  @HiveField(0)
  String firstName;

  @HiveField(1)
  String lastName;

  @HiveField(2)
  String phoneNumber;

  @HiveField(3)
  String role; // 'buyer' or 'seller'

  User({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.role,
  });
}
