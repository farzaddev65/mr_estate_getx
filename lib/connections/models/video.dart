part of '../data.dart';

class MediaData {
  MediaData({
    this.header,
    this.chapters,
  });

  factory MediaData.fromJson(final String str) => MediaData.fromMap(json.decode(str));

  factory MediaData.fromMap(final Map<String, dynamic> json) => MediaData(
        header: json["header"] == null ? null : MediaRead.fromMap(json["header"]),
        chapters: json["chapters"] == null ? <Chapter>[] : List<Chapter>.from(json["chapters"].cast<Map<String, dynamic>>().map(Chapter.fromMap)).toList(),
      );
  MediaRead? header;
  List<Chapter>? chapters;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "header": header?.toMap(),
        "chapters": chapters == null ? <dynamic>[] : List<dynamic>.from(chapters!.map((final Chapter x) => x.toMap())),
      };
}

class Chapter {
  Chapter({
    this.id,
    this.title,
    this.status,
    this.trainingCourseHeaderId,
    this.videos,
  });

  factory Chapter.fromJson(final String str) => Chapter.fromMap(json.decode(str));

  factory Chapter.fromMap(final Map<String, dynamic> json) => Chapter(
        id: json["id"],
        title: json["title"],
        status: json["status"] == null ? null : int.parse(json["status"].toString()),
        trainingCourseHeaderId: json["training_course_header_id"].toString(),
        videos: json["videos"] == null ? <Video>[] : List<Video>.from(json["videos"].cast<Map<String, dynamic>>().map(Video.fromMap)).toList(),
      );
  int? id;
  String? title;
  int? status;
  String? trainingCourseHeaderId;
  List<Video>? videos;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "title": title,
        "status": status,
        "training_course_header_id": trainingCourseHeaderId,
        "videos": videos == null ? <dynamic>[] : List<dynamic>.from(videos!.map((final Video x) => x.toMap())),
      };
}

class Video {
  Video({
    this.id,
    this.trainingCourseChapterId,
    this.title,
    this.duration,
    this.file,
    this.description,
    this.status,
  });

  factory Video.fromJson(final String str) => Video.fromMap(json.decode(str));

  factory Video.fromMap(final Map<String, dynamic> json) => Video(
        id: json["id"],
        trainingCourseChapterId: json["training_course_chapter_id"].toString(),
        title: json["title"],
        duration: json["duration"],
        file: json["file"],
        description: json["description"],
        status: json["status"] == null ? null : int.parse(json["status"].toString()),
      );
  int? id;
  String? trainingCourseChapterId;
  String? title;
  String? duration;
  String? file;
  String? description;
  int? status;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "training_course_chapter_id": trainingCourseChapterId,
        "title": title,
        "duration": duration,
        "file": file,
        "description": description,
        "status": status,
      };
}

class CreateVideo {
  CreateVideo({
    this.filesPath,
    this.chapterId,
    this.duration,
  });

  factory CreateVideo.fromJson(final String str) => CreateVideo.fromMap(json.decode(str));

  factory CreateVideo.fromMap(final Map<String, dynamic> json) => CreateVideo(
        filesPath: json["file"],
        chapterId: json["chapterId"],
        duration: json["duration"],
      );
  int? chapterId;
  String? filesPath;
  String? duration;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "file": filesPath,
        "chapterId": chapterId,
        "duration": duration,
      };
}

class Header {
  Header({
    this.id,
    this.description,
    this.title,
    this.cover,
    this.price,
    this.rate,
  });

  factory Header.fromJson(final String str) => Header.fromMap(json.decode(str));

  factory Header.fromMap(final Map<String, dynamic> json) => Header(
        id: json["id"],
        description: json["description"],
        title: json["title"],
        cover: json["cover"],
        price: json["price"],
        rate: json["rate"] == null ? null : double.parse(json["rate"].toString()),
      );
  int? id;
  dynamic description;
  String? title;
  String? cover;
  String? price;
  double? rate;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "description": description,
        "title": title,
        "cover": cover,
        "price": price,
        "rate": rate,
      };
}

class MediaRead {
  MediaRead({
    this.id,
    this.title,
    this.description,
    this.webUrl,
    this.licenseFile,
    this.licenseOwner,
    this.type,
    this.fullName,
    this.price,
    this.rate,
    this.cover,
    this.discount,
    this.user,
    this.status,
    this.isPay,
  });

  factory MediaRead.fromJson(final String str) => MediaRead.fromMap(json.decode(str));

  factory MediaRead.fromMap(final Map<String, dynamic> json) => MediaRead(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        fullName: json["full_name"],
        price: json["price"] == null ? null : int.parse(json["price"].toString()),
        rate: json["rate"] == null ? null : double.parse(json["rate"].toString()),
        webUrl: json["web_url"],
        licenseFile: json["license_file"],
    licenseOwner: json["license_owner"],
        type: json["type"],
        cover: json["cover"],
        status: json["status"],
        discount: json["discount"],
        isPay: json["isPay"],
        // isPay: true,
        user: json["user"] == null ? null : User.fromMap(json["user"]),
      );
  int? id;
  String? title;
  dynamic description;
  String? webUrl;
  String? licenseFile;
  String? licenseOwner;
  String? type;
  String? fullName;
  int? price;
  int? discount;
  int? status;
  double? rate;
  String? cover;
  bool? isPay;
  User? user;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "title": title,
        "description": description,
        "web_url": webUrl,
        "license_file": licenseFile,
        "license_owner": licenseOwner,
        "type": type,
        "full_name": fullName,
        "price": price,
        "discount": discount,
        "status": status,
        "rate": rate,
        "cover": cover,
        "isPay": isPay,
        "user": user?.toMap(),
      };
}

class VideoFilterModel {
  VideoFilterModel({
    this.page,
    this.title,
    this.userName,
    this.mainCategoryId,
    this.subCategoryId1,
    this.subCategoryId2,
    this.subCategoryId3,
  });

  factory VideoFilterModel.fromJson(final String str) => VideoFilterModel.fromMap(json.decode(str));

  factory VideoFilterModel.fromMap(final Map<String, dynamic> json) => VideoFilterModel(
        title: json["title"] ?? '',
        page: json["page"],
        userName: json["userName"] ?? '',
        mainCategoryId: json["main_category_id"] ?? '',
        subCategoryId1: json["sub_category_id_1"] ?? '',
        subCategoryId2: json["sub_category_id_2"] ?? '',
        subCategoryId3: json["sub_category_id_3"] ?? '',
      );

  final int? page;
  final String? title;
  final String? userName;
  final String? mainCategoryId;
  final String? subCategoryId1;
  final String? subCategoryId2;
  final String? subCategoryId3;

  String toJson() => json.encode(removeNullEntries(toMap()));

  Map<String, String> toMap() => <String, String>{
        "page": page.toString(),
        "title": title ?? '',
        "userName": userName ?? '',
        "main_category_id": mainCategoryId ?? '',
        "sub_category_id_1": subCategoryId1 ?? '',
        "sub_category_id_2": subCategoryId2 ?? '',
        "sub_category_id_3": subCategoryId3 ?? '',
      };
}

class VideoCreateDto {
  VideoCreateDto({
    this.title,
    this.mainCategoryId,
    this.subCategoryId1,
    this.subCategoryId2,
    this.subCategoryId3,
    this.price,
    this.chapters,
  });

  factory VideoCreateDto.fromJson(final String str) => VideoCreateDto.fromMap(json.decode(str));

  factory VideoCreateDto.fromMap(final Map<String, dynamic> json) => VideoCreateDto(
        title: json["title"],
        mainCategoryId: json["main_category_id"],
        subCategoryId1: json["sub_category_id_1"],
        subCategoryId2: json["sub_category_id_2"],
        subCategoryId3: json["sub_category_id_3"],
        price: json["price"],
        chapters: json["chapters"] == null ? <ChaptersDto>[] : List<ChaptersDto>.from(json["chapters"].cast<Map<String, dynamic>>().map(ChaptersDto.fromMap)).toList(),
      );
  String? title;
  String? mainCategoryId;
  String? subCategoryId1;
  String? subCategoryId2;
  String? subCategoryId3;
  String? price;
  List<ChaptersDto>? chapters;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "title": title,
        "main_category_id": mainCategoryId,
        "sub_category_id_1": subCategoryId1,
        "sub_category_id_2": subCategoryId2,
        "sub_category_id_3": subCategoryId3,
        "price": price,
        "chapters": chapters == null ? <dynamic>[] : List<dynamic>.from(chapters!.map((final ChaptersDto x) => x.toJson())),
      };
}

class ChaptersDto {
  ChaptersDto({
    this.title,
    this.videos,
  });

  factory ChaptersDto.fromJson(final String str) => ChaptersDto.fromMap(json.decode(str));

  factory ChaptersDto.fromMap(final Map<String, dynamic> json) => ChaptersDto(
        title: json["title"],
        videos: json["videos"] == null ? <VideosDto>[] : List<VideosDto>.from(json["videos"].cast<Map<String, dynamic>>().map(VideosDto.fromMap)).toList(),
      );
  String? title;
  List<VideosDto>? videos;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "title": title,
        "videos": videos == null ? <VideosDto>[] : List<VideosDto>.from(videos!.map((final VideosDto x) => x.toMap())),
      };
}

class VideosDto {
  VideosDto({
    this.path,
    this.description,
    this.title,
    this.duration,
  });

  factory VideosDto.fromJson(final String str) => VideosDto.fromMap(json.decode(str));

  factory VideosDto.fromMap(final Map<String, dynamic> json) => VideosDto(
        title: json["title"],
        description: json["description"],
        path: json["path"],
        duration: json["duration"],
      );
  String? title;
  String? description;
  String? path;
  String? duration;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "title": title,
        "description": description,
        "path": path,
        "duration": duration,
      };
}
