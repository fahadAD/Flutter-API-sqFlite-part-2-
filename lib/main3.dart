
// To parse this JSON data, do
//
//     final fahadJson = fahadJsonFromJson(jsonString);

import 'dart:convert';

List<FahadJson> fahadJsonFromJson(String str) => List<FahadJson>.from(json.decode(str).map((x) => FahadJson.fromJson(x)));

String fahadJsonToJson(List<FahadJson> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FahadJson {
  FahadJson({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  int? userId;
  int? id;
  String? title;
  bool? completed;

  factory FahadJson.fromJson(Map<String, dynamic> json) => FahadJson(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "completed": completed,
  };
}
// https://reqres.in/api/users?page=2 Practise Api,
