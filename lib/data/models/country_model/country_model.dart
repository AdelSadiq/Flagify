import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'country_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class CountryModel extends HiveObject {
  @HiveField(0)
  final String code;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String emoji;

  CountryModel({required this.code, required this.name, required this.emoji});

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
      code: json['code'] as String,
      name: json['name'] as String,
      emoji: json['emoji'] as String);
}
