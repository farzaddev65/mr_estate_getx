import 'dart:convert';

class PlanningModel {
  PlanningModel({
    this.planning,
  });

  factory PlanningModel.fromJson(final String str) => PlanningModel.fromMap(json.decode(str));

  factory PlanningModel.fromMap(final Map<String, dynamic> json) => PlanningModel(
        planning: json["planning"] == null ? null : Planning.fromMap(json["planning"]),
        // categories: json["categories"] == null ? <CategoryReadDto>[] : List<CategoryReadDto>.from(json["categories"].cast<Map<String, dynamic>>().map(CategoryReadDto.fromMap)).toList(),
      );
  Planning? planning;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "planning": planning?.toMap(),
      };
}

class Planning {
  Planning({
    this.id,
    this.title,
    this.planDate,
    this.startTime,
    this.endTime,
    this.color,
    this.isAlarm,
  });

  factory Planning.fromJson(final String str) => Planning.fromMap(json.decode(str));

  factory Planning.fromMap(final Map<String, dynamic> json) => Planning(
        id: json["id"],
        title: json["title"],
        planDate: json["plan_date"],
        startTime: json["start_time"],
        endTime: json["end_time"],
        color: json["color"],
        isAlarm: json["is_alarm"].toString(),
      );
  int? id;
  String? title;
  String? planDate;
  String? startTime;
  String? endTime;
  String? color;
  String? isAlarm;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "title": title,
        "plan_date": planDate,
        "start_time": startTime,
        "end_time": endTime,
        "color": color,
        "is_alarm": isAlarm,
      };
}

class UploadPlanning {
  UploadPlanning({
    this.title,
    this.planDate,
    this.startTime,
    this.endTime,
    this.color,
    this.isAlarm,
  });

  factory UploadPlanning.fromJson(final String str) => UploadPlanning.fromMap(json.decode(str));

  factory UploadPlanning.fromMap(final Map<String, dynamic> json) => UploadPlanning(
        title: json["title"],
        planDate: json["plan_date"],
        startTime: json["start_time"],
        endTime: json["end_time"],
        color: json["color"],
        isAlarm: json["is_alarm"],
      );
  String? title;
  String? planDate;
  String? startTime;
  String? endTime;
  String? color;
  String? isAlarm;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "title": title,
        "plan_date": planDate,
        "start_time": startTime,
        "end_time": endTime,
        "color": color,
        "is_alarm": isAlarm,
      };
}
