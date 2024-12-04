part of '../data.dart';

class UserReadDto {
  UserReadDto({
    this.verifyCode,
    this.token,
    this.user,
    this.users,
  });

  factory UserReadDto.fromJson(final String str) => UserReadDto.fromMap(json.decode(str));

  factory UserReadDto.fromMap(final Map<String, dynamic> json) => UserReadDto(
        verifyCode: json["verify_code"],
        token: json["token"] ?? '',
        user: json["user"] == null ? null : User.fromMap(json["user"]),
        users: json["users"] == null ? <User>[] : List<User>.from(json["users"].cast<Map<String, dynamic>>().map(User.fromMap)).toList(),
      );
  final int? verifyCode;
  final String? token;
  final User? user;
  final List<User>? users;

  String toJson() => json.encode(removeNullEntries(toMap()));

  Map<String, dynamic> toMap() => <String, dynamic>{
        "verify_code": verifyCode,
        "token": token,
        "user": user?.toMap(),
        "users": users == null ? <dynamic>[] : List<dynamic>.from(users!.map((final User x) => x.toMap())),
      };
}

class UserUpdateDto {
  UserUpdateDto({
    this.levelId,
    this.majorId,
    this.type,
    this.nationalCode,
    this.avatar,
    this.website,
    this.evidence,
  });

  factory UserUpdateDto.fromJson(final String str) => UserUpdateDto.fromMap(json.decode(str));

  factory UserUpdateDto.fromMap(final Map<String, dynamic> json) => UserUpdateDto(
        levelId: json["level_id"] ?? '',
        majorId: json["major_id"] ?? '',
        type: json["type"] ?? '',
        nationalCode: json["national_code"] ?? '',
        avatar: json["avatar"] ?? '',
        website: json["website"] ?? '',
        evidence: json["evidence"] ?? '',
      );

  final int? levelId;
  final int? majorId;
  final String? type;
  final int? nationalCode;
  final String? avatar;
  final String? website;
  final String? evidence;

  String toJson() => json.encode(removeNullEntries(toMap()));

  Map<String, dynamic> toMap() => <String, dynamic>{
        "level_id": levelId,
        "major_id": majorId,
        "type": type,
        "national_code": nationalCode,
        "avatar": avatar,
        "website": website,
        "evidence": evidence,
      };
}

class UserFilterModel {
  UserFilterModel({
    this.fullName,
    this.gender,
    this.levelId,
    this.majorId,
    this.mobile,
    this.website,
    this.type,
  });

  factory UserFilterModel.fromJson(final String str) => UserFilterModel.fromMap(json.decode(str));

  factory UserFilterModel.fromMap(final Map<String, dynamic> json) => UserFilterModel(
        fullName: json["full_name"] ?? '',
        gender: json["gender"] ?? '',
        levelId: json["level_id"] ?? '',
        majorId: json["major_id"] ?? '',
        mobile: json["mobile"] ?? '',
        website: json["website"] ?? '',
        type: json["type"] ?? '',
      );

  final String? fullName;
  final int? gender;
  final int? levelId;
  final int? majorId;
  final String? mobile;
  final String? website;
  final String? type;

  String toJson() => json.encode(removeNullEntries(toMap()));

  Map<String, dynamic> toMap() => <String, dynamic>{
        "full_name": fullName ?? '',
        "gender": gender,
        "level_id": levelId,
        "major_id": majorId,
        "mobile": mobile ?? '',
        "website": website ?? '',
        "type": type ?? '',
      };
}

class User {
  User({
    this.id,
    this.userId,
    this.fullName,
    this.gender,
    this.levelId,
    this.majorId,
    this.mobile,
    this.avatar,
    this.website,
    this.phoneNumber,
    this.email,
    this.isConfirm,
    this.rate,
    this.nationalCode,
    this.refCode,
    this.type,
    this.expireDays,
    this.credit,
    this.status,
  });

  factory User.fromJson(final String str) => User.fromMap(json.decode(str));

  factory User.fromMap(final Map<String, dynamic> json) => User(
        id: json["id"],
        userId: json["user_id"],
        fullName: json["full_name"],
        isConfirm: json["isConfirm"],
        nationalCode: json["national_code"],
        gender: json["gender"] == null ? null : int.parse(json["gender"].toString()),
        levelId: json["level_id"] == null ? null : int.parse(json["level_id"].toString()),
        majorId: json["major_id"] == null ? null : int.parse(json["major_id"].toString()),
        mobile: json["mobile"],
        // avatar: 'lib/assets/png/avatar_m2.png',
        avatar: json["avatar"],
    email: json["email"],
    phoneNumber: json["phone_number"],
        website: json["website"].toString(),
        refCode: json["ref_code"],
        rate: json["rate"] == null ? null : double.parse(json["rate"].toString()),
        type: json["type"],
        expireDays: json["expireDays"],
        credit: json["credit"],
        status: json["status"],
      );
  int? id;
  int? userId;
  String? fullName;
  String? nationalCode;
  int? gender;
  int? levelId;
  int? isConfirm;
  int? majorId;
  String? refCode;
  double? rate;
  String? mobile;
  String? email;
  String? avatar;
  String? phoneNumber;
  String? website;
  String? type;
  int? expireDays;
  int? credit;
  int? status;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "user_id": userId,
        "fullName": fullName,
        "gender": gender,
        "national_code": nationalCode,
        "level_id": levelId,
        "major_id": majorId,
        "mobile": mobile,
        "email": email,
        "phone_number": phoneNumber,
        "isConfirm": isConfirm,
        "ref_code": refCode,
        "rate": rate,
        "website": website,
        "avatar": avatar,
        "type": type,
        "expireDays": expireDays,
        "credit": credit,
        "status": status,
      };
}
