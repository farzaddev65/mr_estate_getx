import 'dart:convert';

import 'package:sample_getx/connections/models/competition.dart';
import 'package:sample_getx/connections/models/financial.dart';
import 'package:sample_getx/connections/models/invite_code.dart';
import 'package:sample_getx/connections/models/notification.dart';
import 'package:sample_getx/connections/models/pdf.dart';
import 'package:sample_getx/connections/models/planning.dart';
import 'package:sample_getx/connections/models/report.dart';
import 'package:sample_getx/connections/models/setting.dart';
import 'package:sample_getx/connections/models/slider.dart';
import 'package:sample_getx/connections/models/transactions.dart';
import 'package:sample_getx/core/constants.dart';
import 'package:sample_getx/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:dio_retry_plus/dio_retry_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

part 'datasource/example_datasource.dart';
part 'datasource/financial_datasource.dart';
part 'datasource/generic_response.dart';
part 'datasource/http_interceptor.dart';
part 'datasource/media_datasource.dart';
part 'datasource/notification_datasource.dart';
part 'datasource/others_datasource.dart';
part 'datasource/planning_datasource.dart';
part 'datasource/question_datasource.dart';
part 'datasource/rate_datasource.dart';
part 'datasource/report_datasource.dart';
part 'datasource/setting_datasource.dart';
part 'datasource/transaction_datasource.dart';
part 'datasource/user_datasource.dart';
part 'models/category.dart';
part 'models/example_model.dart';
part 'models/package.dart';
part 'models/question.dart';
part 'models/user.dart';
part 'models/video.dart';

T? removeNullEntries<T>(final T? json) {
  if (json == null) return null;

  if (json is List) {
    json.removeWhere((final dynamic e) => e == null);
    json.forEach(removeNullEntries);
  } else if (json is Map) {
    json.removeWhere((final dynamic key, final dynamic value) => key == null || value == null);
    json.values.forEach(removeNullEntries);
  }

  return json;
}

class EmptyObjectDto {
  EmptyObjectDto({this.o});

  factory EmptyObjectDto.fromJson(final String str) => EmptyObjectDto.fromMap(json.decode(str));

  factory EmptyObjectDto.fromMap(final Map<String, dynamic> json) => EmptyObjectDto(o: json["o"]);
  final String? o;

  String toJson() => json.encode(removeNullEntries(toMap()));

  Map<String, dynamic> toMap() => <String, dynamic>{"o": o};
}
