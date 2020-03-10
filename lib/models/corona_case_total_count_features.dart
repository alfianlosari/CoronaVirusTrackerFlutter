import 'package:CoronaTracker/models/corona_case_total_count_attributes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'corona_case_total_count_features.g.dart';

@JsonSerializable()
class CoronaCaseTotalCountFeatures {
  final CoronaCaseTotalCountAttributes attributes;

  CoronaCaseTotalCountFeatures({this.attributes});

  factory CoronaCaseTotalCountFeatures.fromJson(Map<String, dynamic> json) =>
      _$CoronaCaseTotalCountFeaturesFromJson(json);
  Map<String, dynamic> toJSON() => _$CoronaCaseTotalCountFeaturesToJson(this);
}
