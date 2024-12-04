import 'dart:convert';


class InviteCodeDto {

  InviteCodeDto({
    this.link,
    this.code,
  });

  factory InviteCodeDto.fromJson(final String str) => InviteCodeDto.fromMap(json.decode(str));

  factory InviteCodeDto.fromMap(final Map<String, dynamic> json) => InviteCodeDto(
    link: json["link"],
    code: json["code"],
  );
  String? link;
  String? code;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    "link": link,
    "code": code,
  };
}
