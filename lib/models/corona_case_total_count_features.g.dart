// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corona_case_total_count_features.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoronaCaseTotalCountFeatures _$CoronaCaseTotalCountFeaturesFromJson(
    Map<String, dynamic> json) {
  return CoronaCaseTotalCountFeatures(
    attributes: json['attributes'] == null
        ? null
        : CoronaCaseTotalCountAttributes.fromJson(
            json['attributes'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CoronaCaseTotalCountFeaturesToJson(
        CoronaCaseTotalCountFeatures instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
    };
