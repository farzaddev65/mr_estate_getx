import 'dart:convert';

class FinancialDto {
  FinancialDto({this.url});

  factory FinancialDto.fromJson(final String str) => FinancialDto.fromMap(json.decode(str));

  factory FinancialDto.fromMap(final Map<String, dynamic> json) => FinancialDto(
        url: json["url"],
      );
  String? url;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
        "url": url,
      };
}
