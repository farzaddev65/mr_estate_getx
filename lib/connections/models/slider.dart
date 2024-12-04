import 'dart:convert';


class SlidersReadDto {

  SlidersReadDto({
    this.sliders,
  });

  factory SlidersReadDto.fromJson(final String str) => SlidersReadDto.fromMap(json.decode(str));

  factory SlidersReadDto.fromMap(final Map<String, dynamic> json) => SlidersReadDto(
    sliders: json["sliders"] == null ? <Sliders>[] : List<Sliders>.from(json["sliders"].cast<Map<String, dynamic>>().map(Sliders.fromMap)).toList(),
  );
  List<Sliders>? sliders;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String,dynamic >{
    "sliders": sliders == null ? <dynamic>[] : List<dynamic>.from(sliders!.map((final Sliders x) => x.toMap())),
  };
}

class Sliders {

  Sliders({
    this.id,
    this.title,
    this.image,
    this.link,
  });

  factory Sliders.fromJson(final String str) => Sliders.fromMap(json.decode(str));

  factory Sliders.fromMap(final Map<String, dynamic> json) => Sliders(
    id: json["id"],
    title: json["title"],
    image: json["image"],
    link: json["link"],
  );
  int? id;
  String? title;
  String? image;
  String? link;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String,dynamic >{
    "id": id,
    "title": title,
    "image": image,
    "link": link,
  };
}
