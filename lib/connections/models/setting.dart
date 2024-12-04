import 'dart:convert';

class SettingDto {
  SettingDto({
    this.lastVersion,
    this.title,
    this.description,
    this.bazarLink,
    this.myketLink,
    this.palyStoreLink,
    this.otherLink,
    this.isForce,
  });

  factory SettingDto.fromMap(final Map<String, dynamic> json) => SettingDto(
        lastVersion: json["lastVersion"],
        title: json["title"],
        description: json["description"],
        bazarLink: json["bazarLink"],
        myketLink: json["myketLink"],
        palyStoreLink: json["palyStoreLink"],
        otherLink: json["otherLink"],
        isForce: json["isForce"],
      );

  factory SettingDto.fromJson(final String str) => SettingDto.fromMap(json.decode(str));
  int? lastVersion;
  String? title;
  String? description;
  String? bazarLink;
  String? myketLink;
  String? palyStoreLink;
  String? otherLink;
  bool? isForce;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "lastVersion": lastVersion,
        "title": title,
        "description": description,
        "bazarLink": bazarLink,
        "myketLink": myketLink,
        "palyStoreLink": palyStoreLink,
        "otherLink": otherLink,
        "isForce": isForce,
      };
}
