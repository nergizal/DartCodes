// To parse this JSON data, do
//
//     final postmodel = postmodelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Postmodel postmodelFromJson(String str) => Postmodel.fromJson(json.decode(str));

String postmodelToJson(Postmodel data) => json.encode(data.toJson());

class Postmodel {
    final int userId;
    final int id;
    final String title;
    final String body;

    Postmodel({
        required this.userId,
        required this.id,
        required this.title,
        required this.body,
    });

    factory Postmodel.fromJson(Map<String, dynamic> json) => Postmodel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}
