// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'who_advice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WHOAdvice _$WHOAdviceFromJson(Map<String, dynamic> json) {
  return WHOAdvice(
    title: json['title'] as String,
    subtitle: json['subtitle'] as String,
    basics: (json['basics'] as List)
        ?.map((e) =>
            e == null ? null : WHOData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    topics: (json['topics'] as List)
        ?.map((e) =>
            e == null ? null : WHOTopic.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WHOAdviceToJson(WHOAdvice instance) => <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'basics': instance.basics,
      'topics': instance.topics,
    };
