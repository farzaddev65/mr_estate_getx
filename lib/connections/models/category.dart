part of '../data.dart';

class MajorReadDto {
  MajorReadDto({
    this.categories,
  });

  factory MajorReadDto.fromJson(final String str) => MajorReadDto.fromMap(json.decode(str));

  factory MajorReadDto.fromMap(final Map<String, dynamic> json) => MajorReadDto(
        categories: json["categories"] == null ? <CategoryReadDto>[] : List<CategoryReadDto>.from(json["categories"].cast<Map<String, dynamic>>().map(CategoryReadDto.fromMap)).toList(),
      );
  List<CategoryReadDto>? categories;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "categories": categories == null ? <dynamic>[] : List<dynamic>.from(categories!.map((final CategoryReadDto x) => x.toMap())),
      };
}

class CategoryReadDto {
  CategoryReadDto({
    this.id,
    this.title,
    this.isPay,
    this.icon,
    this.status,
    this.parent,
    this.count,
    this.basicCount,
    this.mediumCount,
    this.advancedCount,
    this.basicPercent,
    this.mediumPercent,
    this.advancedPercent,
    this.childs,
  });

  factory CategoryReadDto.fromJson(final String str) => CategoryReadDto.fromMap(json.decode(str));

  factory CategoryReadDto.fromMap(final Map<String, dynamic> json) => CategoryReadDto(
        id: json["id"],
        title: json["title"],
        icon: json["icon"],
        isPay: true,
        // isPay: json["isPay"],
        status: json["status"],
        parent: json["parent"],
        count: json["count"],
        basicCount: json["basicCount"],
        mediumCount: json["mediumCount"],
        advancedCount: json["advancedCount"],
        basicPercent: json["basicPercent"],
        mediumPercent: json["mediumPercent"],
        advancedPercent: json["advancedPercent"],
        childs: json["childs"] == null ? <CategoryReadDto>[] : List<CategoryReadDto>.from(json["childs"].cast<Map<String, dynamic>>().map(CategoryReadDto.fromMap)).toList(),
      );
  int? id;
  String? title;
  bool? isPay;
  String? icon;
  int? status;
  int? parent;
  int? count;
  int? basicCount;
  int? mediumCount;
  int? advancedCount;
  int? basicPercent;
  int? mediumPercent;
  int? advancedPercent;

  List<CategoryReadDto>? childs;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "title": title,
        "isPay": isPay,
        "icon": icon,
        "status": status,
        "parent": parent,
        "count": count,
        "basicCount": basicCount,
        "mediumCount": mediumCount,
        "advancedCount": advancedCount,
        "basicPercent": basicPercent,
        "mediumPercent": mediumPercent,
        "advancedPercent": advancedPercent,
        "childs": childs == null ? <dynamic>[] : List<dynamic>.from(childs!.map((final CategoryReadDto x) => x.toMap())),
      };
}

class BookReadDto {
  BookReadDto({
    this.id,
    this.title,
    this.icon,
    this.status,
    this.parent,
    this.level,
    this.children,
  });

  factory BookReadDto.fromJson(final String str) => BookReadDto.fromMap(json.decode(str));

  factory BookReadDto.fromMap(final Map<String, dynamic> json) => BookReadDto(
        id: json["id"],
        title: json["title"],
        icon: json["icon"],
        status: json["status"],
        parent: json["parent"],
        level: json["level"],
        children: json["childs"] == null ? <LevelReadDto>[] : List<LevelReadDto>.from(json["childs"]!.map((final LevelReadDto x) => x)),
      );
  int? id;
  String? title;
  dynamic icon;
  int? status;
  dynamic parent;
  String? level;
  List<LevelReadDto>? children;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "title": title,
        "icon": icon,
        "status": status,
        "parent": parent,
        "level": level,
        "childs": children == null ? <dynamic>[] : List<dynamic>.from(children!.map((final LevelReadDto x) => x.toMap())),
      };
}

class LevelReadDto {
  LevelReadDto({
    this.id,
    this.title,
    this.icon,
    this.status,
    this.parent,
    this.level,
    this.children,
  });

  factory LevelReadDto.fromJson(final String str) => LevelReadDto.fromMap(json.decode(str));

  factory LevelReadDto.fromMap(final Map<String, dynamic> json) => LevelReadDto(
        id: json["id"],
        title: json["title"],
        icon: json["icon"],
        status: json["status"],
        parent: json["parent"],
        level: json["level"],
        children: json["childs"] == null ? <LessonDto>[] : List<LessonDto>.from(json["childs"]!.map((final LessonDto x) => x)),
      );
  int? id;
  String? title;
  dynamic icon;
  int? status;
  dynamic parent;
  String? level;
  List<LessonDto>? children;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "title": title,
        "icon": icon,
        "status": status,
        "parent": parent,
        "level": level,
        "childs": children == null ? <dynamic>[] : List<dynamic>.from(children!.map((final LessonDto x) => x.toMap())),
      };
}

class LessonDto {
  LessonDto({
    this.id,
    this.title,
    this.slug,
    this.description,
    this.icon,
    this.count,
    this.parentId,
    this.mainParentId,
    this.level,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory LessonDto.fromJson(final String str) => LessonDto.fromMap(json.decode(str));

  factory LessonDto.fromMap(final Map<String, dynamic> json) => LessonDto(
        id: json["id"],
        title: json["title"],
        slug: json["slug"],
        description: json["description"],
        icon: json["icon"],
        count: json["count"],
        parentId: json["parent_id"],
        mainParentId: json["main_parent_id"],
        level: json["level"],
        status: json["status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
      );
  int? id;
  String? title;
  String? slug;
  dynamic description;
  dynamic icon;
  String? count;
  String? parentId;
  String? mainParentId;
  String? level;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "title": title,
        "slug": slug,
        "description": description,
        "icon": icon,
        "count": count,
        "parent_id": parentId,
        "main_parent_id": mainParentId,
        "level": level,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
