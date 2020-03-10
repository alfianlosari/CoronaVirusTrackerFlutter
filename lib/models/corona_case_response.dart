import 'package:CoronaTracker/models/corona_case_features.dart';
import 'package:json_annotation/json_annotation.dart';

part 'corona_case_response.g.dart';

@JsonSerializable()
class CoronaCaseResponse {
  final List<CoronaCaseFeatures> features;

  CoronaCaseResponse({this.features});

  factory CoronaCaseResponse.fromJson(Map<String, dynamic> json) =>
      _$CoronaCaseResponseFromJson(json);
  Map<String, dynamic> toJSON() => _$CoronaCaseResponseToJson(this);
}
