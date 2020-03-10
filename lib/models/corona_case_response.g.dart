// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corona_case_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoronaCaseResponse _$CoronaCaseResponseFromJson(Map<String, dynamic> json) {
  return CoronaCaseResponse(
    features: (json['features'] as List)
        ?.map((e) => e == null
            ? null
            : CoronaCaseFeatures.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoronaCaseResponseToJson(CoronaCaseResponse instance) =>
    <String, dynamic>{
      'features': instance.features,
    };
