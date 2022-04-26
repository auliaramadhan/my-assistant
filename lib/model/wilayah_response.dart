// To parse this JSON Wilayahdata, do
//
//     final wilayahResponse = wilayahResponseFromMap(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';

class WilayahResponse {
  WilayahResponse({
    required this.code,
    required this.messages,
    this.data,
  });

  final String code;
  final String messages;
  final List<WilayahData>? data;

  WilayahResponse copyWith({
    String? code,
    String? messages,
    List<WilayahData>? data,
  }) =>
      WilayahResponse(
        code: code ?? this.code,
        messages: messages ?? this.messages,
        data: data ?? this.data,
      );

  factory WilayahResponse.fromJson(String str) => WilayahResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WilayahResponse.fromMap(Map<String, dynamic> json) => WilayahResponse(
        code: json["code"],
        messages: json["messages"],
        data: List<WilayahData>.from(json["value"].map((x) => WilayahData.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "code": code,
        "messages": messages,
        "value": data?.map((x) => x.toMap()),
      };
}

class WilayahData extends Equatable {
  WilayahData({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  WilayahData copyWith({
    String? id,
    String? name,
  }) =>
      WilayahData(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory WilayahData.fromJson(String str) => WilayahData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WilayahData.fromMap(Map<String, dynamic> json) => WilayahData(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
      };

  @override
  // TODO: implement props
  List<Object?> get props => [id, name];
}
