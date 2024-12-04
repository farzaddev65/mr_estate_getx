import 'dart:convert';

import 'package:sample_getx/connections/data.dart';

class ExamDto {
  ExamDto({
    this.exams,
  });

  factory ExamDto.fromJson(final String str) => ExamDto.fromMap(json.decode(str));

  factory ExamDto.fromMap(final Map<String, dynamic> json) => ExamDto(
        exams: json["exams"] == null ? <Exam>[] : List<Exam>.from(json["exams"].cast<Map<String, dynamic>>().map(Exam.fromMap)).toList(),
      );
  List<Exam>? exams;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "exams": exams == null ? <dynamic>[] : List<dynamic>.from(exams!.map((final Exam x) => x.toMap())),
      };
}

class Exam {
  Exam({
    this.id,
    this.title,
    this.user,
    this.mainCategoryId,
    this.mainCategoryTitle,
    this.subCategoryId1,
    this.subCategoryId1Title,
    this.subCategoryId2,
    this.subCategoryId2Title,
    this.subCategoryId3,
    this.subCategoryId3Title,
    this.price,
    this.discount,
    this.isPay,
    this.status,
    this.items,
  });

  factory Exam.fromJson(final String str) => Exam.fromMap(json.decode(str));

  factory Exam.fromMap(final Map<String, dynamic> json) => Exam(
        id: json["id"],
        title: json["title"],
        user: json["user"] == null ? null : User.fromMap(json["user"]),
        mainCategoryId: json["main_category_id"],
        mainCategoryTitle: json["main_category_title"],
        subCategoryId1: json["sub_category_id_1"],
        subCategoryId1Title: json["sub_category_id_1_title"],
        subCategoryId2: json["sub_category_id_2"],
        subCategoryId2Title: json["sub_category_id_2_title"],
        subCategoryId3: json["sub_category_id_3"],
        subCategoryId3Title: json["sub_category_id_3_title"],
        price: json["price"],
    discount: json["discount"],
        // isPay: true,
        isPay: json["isPay"],
    status: json["status"],
        items: json["items"] == null ? <QuestionDto>[] : List<QuestionDto>.from(json["items"].cast<Map<String, dynamic>>().map(QuestionDto.fromMap)).toList(),
      );
  int? id;
  String? title;
  User? user;
  int? mainCategoryId;
  String? mainCategoryTitle;
  int? subCategoryId1;
  String? subCategoryId1Title;
  int? subCategoryId2;
  String? subCategoryId2Title;
  int? subCategoryId3;
  String? subCategoryId3Title;
  int? price;
  int? discount;
  int? status;
  bool? isPay;
  List<QuestionDto>? items;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "title": title,
        "user": user?.toMap(),
        "main_category_id": mainCategoryId,
        "main_category_title": mainCategoryTitle,
        "sub_category_id_1": subCategoryId1,
        "sub_category_id_1_title": subCategoryId1Title,
        "sub_category_id_2": subCategoryId2,
        "sub_category_id_2_title": subCategoryId2Title,
        "sub_category_id_3": subCategoryId3,
        "sub_category_id_3_title": subCategoryId3Title,
        "price": price,
        "discount": discount,
        "status": status,
        "isPay": isPay,
        "items": items == null ? <dynamic>[] : List<dynamic>.from(items!.map((final QuestionDto x) => x.toMap())),
      };
}
