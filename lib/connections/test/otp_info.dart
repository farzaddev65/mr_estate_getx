import 'dart:convert';

class OtpInfo {

  OtpInfo({
    this.status,
    this.data,
    this.message,
  });

  factory OtpInfo.fromJson(final String str) => OtpInfo.fromMap(json.decode(str));

  factory OtpInfo.fromMap(final Map<String, dynamic> json) => OtpInfo(
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
    this.token,
  });

  factory Data.fromJson(final String str) => Data.fromMap(json.decode(str));

  factory Data.fromMap(final Map<String, dynamic> json) => Data(
    token: json["token"],
  );
  String? token;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String,dynamic>{
    "token": token,
  };
}
