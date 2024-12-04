part of '../data.dart';

class ExampleDto {
  ExampleDto({
    this.id,
    this.title,
    this.user,
    this.users,
    this.tags,
  });

  factory ExampleDto.fromJson(final String str) => ExampleDto.fromMap(json.decode(str));

  factory ExampleDto.fromMap(final Map<String, dynamic> json) => ExampleDto(
        id: json["id"],
        title: json["title"],
        user: json["user"] == null ? null : User.fromMap(json["user"]),
        tags: List<int>.from(json["tags"]!.map((final dynamic x) => x)),
        users: json["users"] == null ? <User>[] : List<User>.from(json["users"].cast<Map<String, dynamic>>().map(User.fromMap)).toList(),
      );
  int? id;
  String? title;
  final User? user;
  List<User>? users;
  List<int>? tags;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "title": title,
        "user": user?.toMap(),
        "tags": List<dynamic>.from(tags!.map((final int x) => x)),
        "users": users == null ? <dynamic>[] : List<dynamic>.from(users!.map((final User x) => x.toMap())),
      };
}

class FilterExampleDto {
  FilterExampleDto({
    this.id,
    this.title,
    this.user,
    this.users,
    this.tags,
  });

  factory FilterExampleDto.fromJson(final String str) => FilterExampleDto.fromMap(json.decode(str));

  factory FilterExampleDto.fromMap(final Map<String, dynamic> json) => FilterExampleDto(
        id: json["id"],
        title: json["title"],
        user: json["user"] == null ? null : User.fromMap(json["user"]),
        tags: List<int>.from(json["tags"]!.map((final dynamic x) => x)),
        users: json["users"] == null ? <User>[] : List<User>.from(json["users"].cast<Map<String, dynamic>>().map(User.fromMap)).toList(),
      );
  int? id;
  String? title;
  final User? user;
  List<User>? users;
  List<int>? tags;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "title": title,
        "user": user?.toMap(),
        "tags": List<dynamic>.from(tags!.map((final int x) => x)),
        "users": users == null ? <dynamic>[] : List<dynamic>.from(users!.map((final User x) => x.toMap())),
      };
}

class CreateUpdateExampleDto {
  CreateUpdateExampleDto({
    this.id,
    this.title,
    this.user,
    this.users,
    this.tags,
  });

  factory CreateUpdateExampleDto.fromJson(final String str) => CreateUpdateExampleDto.fromMap(json.decode(str));

  factory CreateUpdateExampleDto.fromMap(final Map<String, dynamic> json) => CreateUpdateExampleDto(
        id: json["id"],
        title: json["title"],
        user: json["user"] == null ? null : User.fromMap(json["user"]),
        tags: List<int>.from(json["tags"]!.map((final dynamic x) => x)),
        users: json["users"] == null ? <User>[] : List<User>.from(json["users"].cast<Map<String, dynamic>>().map(User.fromMap)).toList(),
      );
  int? id;
  String? title;
  final User? user;
  List<User>? users;
  List<int>? tags;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "title": title,
        "user": user?.toMap(),
        "tags": List<dynamic>.from(tags!.map((final int x) => x)),
        "users": users == null ? <dynamic>[] : List<dynamic>.from(users!.map((final User x) => x.toMap())),
      };
}
