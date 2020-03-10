// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corona_case_features.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoronaCaseFeatures _$CoronaCaseFeaturesFromJson(Map<String, dynamic> json) {
  return CoronaCaseFeatures(
    attributes: json['attributes'] == null
        ? null
        : CoronaCase.fromJson(json['attributes'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CoronaCaseFeaturesToJson(CoronaCaseFeatures instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
    };
