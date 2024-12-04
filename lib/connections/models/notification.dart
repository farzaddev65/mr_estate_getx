import 'dart:convert';


class NotificationModel {

  NotificationModel({
    this.id,
    this.title,
    this.description,
    this.createdAt,
  });

  factory NotificationModel.fromJson(final String str) => NotificationModel.fromMap(json.decode(str));

  factory NotificationModel.fromMap(final Map<String, dynamic> json) => NotificationModel(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    createdAt: json["created_at"],
  );
  int? id;
  String? title;
  String? description;
  String? createdAt;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    "id": id,
    "title": title,
    "description": description,
    "created_at": createdAt,
  };
}
