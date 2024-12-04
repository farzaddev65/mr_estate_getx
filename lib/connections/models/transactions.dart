import 'dart:convert';


class TransactionDto {

  TransactionDto({
    this.id,
    this.userId,
    this.userName,
    this.price,
    this.transactionId,
    this.parentId,
    this.parentTitle,
    this.type,
  });

  factory TransactionDto.fromJson(final String str) => TransactionDto.fromMap(json.decode(str));

  factory TransactionDto.fromMap(final Map<String, dynamic> json) => TransactionDto(
    id: json["id"],
    userId: json["user_id"],
    userName: json["user_name"],
    price: json["price"],
    transactionId: json["transaction_id"],
    parentId: json["parent_id"],
    parentTitle: json["parent_title"],
    type: json["type"],
  );
  int? id;
  int? userId;
  String? userName;
  int? price;
  int? transactionId;
  int? parentId;
  String? parentTitle;
  String? type;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    "id": id,
    "user_id": userId,
    "user_name": userName,
    "price": price,
    "transaction_id": transactionId,
    "parent_id": parentId,
    "parent_title": parentTitle,
    "type": type,
  };
}
