// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corona_case_total_count_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoronaCaseTotalCountResponse _$CoronaCaseTotalCountResponseFromJson(
    Map<String, dynamic> json) {
  return CoronaCaseTotalCountResponse(
    features: (json['features'] as List)
        ?.map((e) => e == null
            ? null
            : CoronaCaseTotalCountFeatures.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoronaCaseTotalCountResponseToJson(
        CoronaCaseTotalCountResponse instance) =>
    <String, dynamic>{
      'features': instance.features,
    };
