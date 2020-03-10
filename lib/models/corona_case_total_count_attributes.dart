import 'package:json_annotation/json_annotation.dart';

part 'corona_case_total_count_attributes.g.dart';

@JsonSerializable()
class CoronaCaseTotalCountAttributes {
  final int value;

  CoronaCaseTotalCountAttributes({this.value});

  factory CoronaCaseTotalCountAttributes.fromJson(Map<String, dynamic> json) =>
      _$CoronaCaseTotalCountAttributesFromJson(json);
  Map<String, dynamic> toJSON() => _$CoronaCaseTotalCountAttributesToJson(this);
}
