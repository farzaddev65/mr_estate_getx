import 'dart:convert';

class LoginInfo {

  LoginInfo({
    this.status,
    this.data,
    this.message,
  });

  factory LoginInfo.fromJson(final String str) => LoginInfo.fromMap(json.decode(str));

  factory LoginInfo.fromMap(final Map<String, dynamic> json) => LoginInfo(
    status: json["status"],
    data: json["data"] == null ? null : Data.fromMap(json["data"]),
    message: json["message"],
  );
  int? status;
  Data? data;
  String? message;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String,dynamic>{
    "status": status,
    "data": data?.toMap(),
    "message": message,
  };
}

class Data {

  Data({
    this.verifyCode,
  });

  factory Data.fromJson(final String str) => Data.fromMap(json.decode(str));

  factory Data.fromMap(final Map<String, dynamic> json) => Data(
    verifyCode: json["verify_code"],
  );
  int? verifyCode;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String,dynamic>{
    "verify_code": verifyCode,
  };
}
