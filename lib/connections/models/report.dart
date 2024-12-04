import 'dart:convert';

class ReportReadDto {
  ReportReadDto({
    this.message,
  });

  factory ReportReadDto.fromJson(final String str) => ReportReadDto.fromMap(json.decode(str));

  factory ReportReadDto.fromMap(final Map<String, dynamic> json) => ReportReadDto(
        message: json["message"],
      );
  String? message;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "message": message,
      };
}

class CreateReportReadDto {
  CreateReportReadDto({
    this.type,
    this.description,
    this.reportId,
  });

  factory CreateReportReadDto.fromJson(final String str) => CreateReportReadDto.fromMap(json.decode(str));

  factory CreateReportReadDto.fromMap(final Map<String, dynamic> json) => CreateReportReadDto(
        type: json["type"],
        description: json["description"],
        reportId: json["report_id"],
      );
  String? type;
  String? description;
  int? reportId;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "type": type,
        "description": description,
        "report_id": reportId,
      };
}
