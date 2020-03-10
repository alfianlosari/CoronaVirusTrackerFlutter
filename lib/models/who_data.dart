import 'package:json_annotation/json_annotation.dart';

part 'who_data.g.dart';

@JsonSerializable()
class WHOData {
  final String title;
  final String subtitle;

  WHOData({this.title, this.subtitle});

  factory WHOData.fromJson(Map<String, dynamic> json) =>
      _$WHODataFromJson(json);
  Map<String, dynamic> toJSON() => _$WHODataToJson(this);
}
