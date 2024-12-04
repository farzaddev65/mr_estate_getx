import 'dart:convert';

import 'package:sample_getx/connections/data.dart';

class HeaderBookDto {
  HeaderBookDto({
    this.book,
  });

  factory HeaderBookDto.fromJson(final String str) => HeaderBookDto.fromMap(json.decode(str));

  factory HeaderBookDto.fromMap(final Map<String, dynamic> json) => HeaderBookDto(
        book: json["book"] == null ? null : PdfReadDto.fromMap(json["book"]),
      );
  PdfReadDto? book;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "book": book?.toMap(),
      };
}

class PdfReadDto {
  PdfReadDto({
    this.id,
    this.title,
    this.cover,
    this.fileUrl,
    this.description,
    this.price,
    this.status,
    this.discount,
    this.webUrl,
    this.licenseFile,
    this.licenseOwner,
    this.type,
    this.isPay,
    this.user,
    this.rate,
  });

  factory PdfReadDto.fromJson(final String str) => PdfReadDto.fromMap(json.decode(str));

  factory PdfReadDto.fromMap(final Map<String, dynamic> json) => PdfReadDto(
        id: json["id"],
        title: json["title"],
        cover: json["cover"],
        fileUrl: json["file_url"],
        isPay: json["isPay"],
        webUrl: json["web_url"],
        licenseFile: json["license_file"],
    licenseOwner: json["license_owner"],
        type: json["type"],
        // isPay: false,
        description: json["description"],
        price: json["price"],
        discount: json["discount"],
        status: json["status"],
        rate: json["rate"] == null ? null : double.parse(json["rate"].toString()),
        user: json["user"] == null ? null : User.fromMap(json["user"]),
      );
  int? id;
  String? title;
  String? cover;
  String? fileUrl;
  String? description;
  String? webUrl;
  String? licenseFile;
  String? licenseOwner;
  String? type;
  int? price;
  int? discount;
  int? status;
  double? rate;
  bool? isPay;
  User? user;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "title": title,
        "cover": cover,
        "file_url": fileUrl,
        "description": description,
        "web_url": webUrl,
        "license_file": licenseFile,
        "license_owner": licenseOwner,
        "type": type,
        "price": price,
        "discount": discount,
        "status": status,
        "rate": rate,
        "isPay": isPay,
        "user": user?.toMap(),
      };
}

class PdfUploadReadDto {
  PdfUploadReadDto({
    this.title,
    this.description,
    this.price,
    this.discount,
    this.cover,
    this.fileName,
    this.parentID,
    this.totalCorrect,
    this.totalFalse,
    this.totalNothing,
    this.mainCategoryId,
    this.subCategoryId1,
    this.subCategoryId2,
    this.subCategoryId3,
    this.webUrl,
    this.licenseFile,
    this.licenseOwner,
    this.type,
    this.chapters,
    this.examList,
  });

  factory PdfUploadReadDto.fromJson(final String str) => PdfUploadReadDto.fromMap(json.decode(str));

  factory PdfUploadReadDto.fromMap(final Map<String, dynamic> json) => PdfUploadReadDto(
        title: json["title"],
        description: json["description"],
        price: json["price"],
        discount: json["discount"],
        cover: json["cover"],
        fileName: json["file_name"],
        licenseFile: json["license_file"],
        licenseOwner: json["license_owner"],
        parentID: json["parent_id"],
        totalCorrect: json["totalCorrect"],
        totalFalse: json["totalFalse"],
        totalNothing: json["totalNothing"],
        mainCategoryId: json["main_category_id"],
        subCategoryId1: json["sub_category_id_1"],
        subCategoryId2: json["sub_category_id_2"],
        subCategoryId3: json["sub_category_id_3"],
        webUrl: json["web_url"],
        type: json["type"],
        chapters: json["chapters"] == null ? <ChaptersDto>[] : List<ChaptersDto>.from(json["chapters"].cast<Map<String, dynamic>>().map(ChaptersDto.fromMap)).toList(),
        examList: json["examList"] == null ? <QuestionDto>[] : List<QuestionDto>.from(json["examList"].cast<Map<String, dynamic>>().map(QuestionDto.fromMap)).toList(),
      );
  String? title;
  String? description;
  int? price;
  int? discount;
  String? cover;
  String? fileName;
  String? licenseFile;
  String? licenseOwner;
  int? parentID;
  int? totalCorrect;
  int? totalFalse;
  int? totalNothing;
  int? mainCategoryId;
  int? subCategoryId1;
  int? subCategoryId2;
  int? subCategoryId3;
  String? webUrl;
  String? type;
  List<ChaptersDto>? chapters;
  List<QuestionDto>? examList;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "title": title,
        "description": description,
        "price": price,
        "discount": discount,
        "cover": cover,
        "file_name": fileName,
        "license_file": licenseFile,
        "license_owner": licenseOwner,
        "parent_id": parentID,
        "totalCorrect": totalCorrect,
        "totalFalse": totalFalse,
        "totalNothing": totalNothing,
        "main_category_id": mainCategoryId,
        "sub_category_id_1": subCategoryId1,
        "sub_category_id_2": subCategoryId2,
        "sub_category_id_3": subCategoryId3,
        "web_url": webUrl,
        "type": type,
        "chapters": chapters == null ? null : List<dynamic>.from(chapters!.map((final ChaptersDto x) => x.toMap())),
        "examList": examList == null ? null : List<dynamic>.from(examList!.map((final QuestionDto x) => x.toJson())).toString(),
      };
}
