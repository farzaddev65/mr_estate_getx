import 'dart:convert';

class CompetitionDto {
  CompetitionDto({
    this.fullName,
    this.avatar,
    this.resultMe,
    this.resultYou,
  });

  factory CompetitionDto.fromJson(final String str) => CompetitionDto.fromMap(json.decode(str));

  factory CompetitionDto.fromMap(final Map<String, dynamic> json) => CompetitionDto(
        fullName: json["full_name"],
        avatar: json["avatar"],
        resultMe: json["resultMe"] == null ? <ResultCompetitionDto>[] : List<ResultCompetitionDto>.from(json["resultMe"].cast<Map<String, dynamic>>().map(ResultCompetitionDto.fromMap)).toList(),
        resultYou: json["resultYou"] == null ? <ResultCompetitionDto>[] : List<ResultCompetitionDto>.from(json["resultYou"].cast<Map<String, dynamic>>().map(ResultCompetitionDto.fromMap)).toList(),
      );
  String? avatar;
  String? fullName;
  List<ResultCompetitionDto>? resultMe;
  List<ResultCompetitionDto>? resultYou;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "avatar": avatar,
        "full_name": fullName,
        "resultMe": resultMe == null ? <dynamic>[] : List<dynamic>.from(resultMe!.map((final ResultCompetitionDto x) => x.toJson())).toString(),
        "resultYou": resultYou == null ? <dynamic>[] : List<dynamic>.from(resultYou!.map((final ResultCompetitionDto x) => x.toJson())).toString(),
      };
}

class ResultCompetitionDto {
  ResultCompetitionDto({
    this.id,
    this.answer,
    this.step,
    this.correctAnswer,
    this.subCategoryId1Title,
    this.subCategoryId1,
  });

  factory ResultCompetitionDto.fromJson(final String str) => ResultCompetitionDto.fromMap(json.decode(str));

  factory ResultCompetitionDto.fromMap(final Map<String, dynamic> json) => ResultCompetitionDto(
        id: json["id"],
        answer: json["answer"],
        step: json["step"],
        correctAnswer: json["correct_answer"],
        subCategoryId1Title: json["sub_category_id_1_title"],
        subCategoryId1: json["sub_category_id_1"],
      );
  int? id;
  int? answer;
  int? step;
  int? correctAnswer;
  String? subCategoryId1Title;
  int? subCategoryId1;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "answer": answer,
        "step": step,
        "sub_category_id_1_title": subCategoryId1Title,
        "sub_category_id_1": subCategoryId1,
        "correct_answer": correctAnswer,
      };
}

//
//
//
//
//
//
//
//
//
//
// class CompetitionDto {
//   CompetitionDto({
//     this.resultMe,
//     this.resultYou,
//   });
//
//   factory CompetitionDto.fromJson(final String str) => CompetitionDto.fromMap(json.decode(str));
//
//   factory CompetitionDto.fromMap(final Map<String, dynamic> json) => CompetitionDto(
//         resultMe: json["resultMe"] == null ? <ResultCompetitionDto>[] : List<ResultCompetitionDto>.from(json["resultMe"].cast<Map<String, dynamic>>().map(ResultCompetitionDto.fromMap)).toList(),
//         resultYou: json["resultYou"] == null ? <ResultCompetitionDto>[] : List<ResultCompetitionDto>.from(json["resultYou"].cast<Map<String, dynamic>>().map(ResultCompetitionDto.fromMap)).toList(),
//       );
//   List<ResultCompetitionDto>? resultMe;
//   List<ResultCompetitionDto>? resultYou;
//
//   String toJson() => json.encode(toMap());
//
//   Map<String, dynamic> toMap() => <String, dynamic>{
//         "resultMe": resultMe == null ? <dynamic>[] : List<dynamic>.from(resultMe!.map((final ResultCompetitionDto x) => x.toJson())).toString(),
//         "resultYou": resultYou == null ? <dynamic>[] : List<dynamic>.from(resultYou!.map((final ResultCompetitionDto x) => x.toJson())).toString(),
//       };
// }
//
// class ResultCompetitionDto {
//   ResultCompetitionDto({
//     this.id,
//     this.answer,
//     this.correctAnswer,
//   });
//
//   factory ResultCompetitionDto.fromJson(final String str) => ResultCompetitionDto.fromMap(json.decode(str));
//
//   factory ResultCompetitionDto.fromMap(final Map<String, dynamic> json) => ResultCompetitionDto(
//         id: json["id"],
//         answer: json["answer"],
//         correctAnswer: json["correct_answer"],
//       );
//   int? id;
//   int? answer;
//   int? correctAnswer;
//
//   String toJson() => json.encode(toMap());
//
//   Map<String, dynamic> toMap() => <String, dynamic>{
//         "id": id,
//         "answer": answer,
//         "correct_answer": correctAnswer,
//       };
// }
