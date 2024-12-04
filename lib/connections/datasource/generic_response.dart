part of '../data.dart';

class GenericResponse<T> {
  GenericResponse({
    this.status = 1,
    this.data,
    this.dataList,
    this.message = "",
  });

  factory GenericResponse.fromJson(final dynamic json, {final Function? fromMap}) {
    if (fromMap == null) return GenericResponse<T>(status: json["status"], message: json["message"] ?? '');
    if (json["data"] is List) {
      return GenericResponse<T>(
        dataList: List<T>.from(json['data'].cast<Map<String, dynamic>>().map(fromMap)),
        status: json["status"],
        message: json["message"] ?? '',
      );
    }
    if (json["data"] is String) {
      return GenericResponse<T>(
        data: json["data"],
        status: json["status"],
        message: json["message"] ?? '',
      );
    }
    return GenericResponse<T>(
      data: json["data"] != null ? fromMap(json["data"]) : null,
      status: json["status"],
      message: json["message"] ?? '',
    );
  }

  final int status;
  final String message;
  final T? data;
  final List<T>? dataList;
}
