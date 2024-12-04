import 'dart:convert';

import 'package:sample_getx/connections/data.dart';

class CreateMediaReadDto {
  CreateMediaReadDto({
    this.file,
    this.id,
    this.duration,
  });

  int? id;
  String? duration;
  String? file;

  String toJson() => json.encode(removeNullEntries(toMap()));

  dynamic toMap() => <String, dynamic>{
        "file": file,
        "id": id,
        "duration": duration,
      };
}
