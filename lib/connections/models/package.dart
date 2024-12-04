part of '../data.dart';

// "id": 4,
// "key": "PackageMentor1",
// "title": "پکیج مشاوره (30 روز)",
// "day": 30,
// "price": "100000"

class PackageReadDto {
  PackageReadDto({
    this.id,
    this.key,
    this.title,
    this.day,
    this.price,
  });

  factory PackageReadDto.fromJson(final String str) => PackageReadDto.fromMap(json.decode(str));

  factory PackageReadDto.fromMap(final Map<String, dynamic> json) => PackageReadDto(
        id: json["id"],
        key: json["key"] ?? '',
        title: json["title"] ?? '',
        day: json["day"] ?? '',
        price: int.parse(json["price"] ?? '0'),
      );
  final int? id;
  final String? key;
  final String? title;
  final int? day;
  final int? price;

  String toJson() => json.encode(removeNullEntries(toMap()));

  Map<String, dynamic> toMap() => <String, dynamic>{
        "id": id,
        "key": key,
        "title": title,
        "day": day,
        "price": price,
      };
}
