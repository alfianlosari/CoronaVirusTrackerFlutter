// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'who_topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WHOTopic _$WHOTopicFromJson(Map<String, dynamic> json) {
  return WHOTopic(
    title: json['title'] as String,
    questions: (json['questions'] as List)
        ?.map((e) =>
            e == null ? null : WHOData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WHOTopicToJson(WHOTopic instance) => <String, dynamic>{
      'title': instance.title,
      'questions': instance.questions,
    };
