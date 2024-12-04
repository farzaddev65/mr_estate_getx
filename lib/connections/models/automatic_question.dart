import 'dart:convert';

class PaymentZibalCreateDto {
  PaymentZibalCreateDto({
    this.status,
    this.data,
    this.message,
  });

  factory PaymentZibalCreateDto.fromJson(final String str) => PaymentZibalCreateDto.fromMap(json.decode(str));

  factory PaymentZibalCreateDto.fromMap(final Map<String, dynamic> json) => PaymentZibalCreateDto(
        status: json["status"],
        data: json["data"] == null ? <Datum>[] : List<Datum>.from(json["data"]!.map(Datum.fromMap)),
        message: json["message"],
      );
  int? status;
  List<Datum>? data;
  String? message;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "status": status,
        "data": data == null ? <dynamic>[] : List<dynamic>.from(data!.map((final dynamic x) => x.toMap())),
        "message": message,
      };
}

class Datum {
  Datum({
    this.id,
    this.questionContent,
    this.questionImage,
    this.type,
    this.mainCategoryId,
    this.mainCategoryTitle,
    this.subCategoryId1,
    this.subCategoryId1Title,
    this.subCategoryId2,
    this.subCategoryId2Title,
    this.subCategoryId3,
    this.subCategoryId3Title,
    this.questionLevel,
    this.answerType,
    this.answer1,
    this.answer2,
    this.answer3,
    this.answer5,
    this.answer6,
    this.question1,
    this.question2,
    this.question3,
    this.question5,
    this.question6,
    this.correctAnswer,
  });

  factory Datum.fromJson(final String str) => Datum.fromMap(json.decode(str));

  factory Datum.fromMap(final Map<String, dynamic> json) => Datum(
        id: json["id"],
        questionContent: json["question_content"],
        questionImage: json["question_image"],
        type: json["type"],
        mainCategoryId: json["main_category_id"],
        mainCategoryTitle: json["main_category_title"],
        subCategoryId1: json["sub_category_id_1"],
        subCategoryId1Title: json["sub_category_id_1_title"],
        subCategoryId2: json["sub_category_id_2"],
        subCategoryId2Title: json["sub_category_id_2_title"],
        subCategoryId3: json["sub_category_id_3"],
        subCategoryId3Title: json["sub_category_id_3_title"],
        questionLevel: json["questionLevel"],
        answerType: json["answer_type"],
        answer1: json["answer_1"],
        answer2: json["answer_2"],
        answer3: json["answer_3"],
        answer5: json["answer_5"],
        answer6: json["answer_6"],
        question1: json["question_1"],
        question2: json["question_2"],
        question3: json["question_3"],
        question5: json["question_5"],
        question6: json["question_6"],
        correctAnswer: json["correct_answer"],
      );
  int? id;
  String? questionContent;
  dynamic questionImage;
  String? type;
  int? mainCategoryId;
  String? mainCategoryTitle;
  int? subCategoryId1;
  String? subCategoryId1Title;
  int? subCategoryId2;
  String? subCategoryId2Title;
  int? subCategoryId3;
  String? subCategoryId3Title;
  String? questionLevel;
  String? answerType;
  String? answer1;
  String? answer2;
  String? answer3;
  String? answer5;
  String? answer6;
  String? question1;
  String? question2;
  String? question3;
  String? question5;
  String? question6;
  int? correctAnswer;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "question_content": questionContent,
        "question_image": questionImage,
        "type": type,
        "main_category_id": mainCategoryId,
        "main_category_title": mainCategoryTitle,
        "sub_category_id_1": subCategoryId1,
        "sub_category_id_1_title": subCategoryId1Title,
        "sub_category_id_2": subCategoryId2,
        "sub_category_id_2_title": subCategoryId2Title,
        "sub_category_id_3": subCategoryId3,
        "sub_category_id_3_title": subCategoryId3Title,
        "questionLevel": questionLevel,
        "answer_type": answerType,
        "answer_1": answer1,
        "answer_2": answer2,
        "answer_3": answer3,
        "answer_5": answer5,
        "answer_6": answer6,
        "question_1": question1,
        "question_2": question2,
        "question_3": question3,
        "question_5": question5,
        "question_6": question6,
        "correct_answer": correctAnswer,
      };
}
