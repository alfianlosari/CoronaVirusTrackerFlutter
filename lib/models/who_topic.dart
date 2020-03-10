import 'package:CoronaTracker/models/who_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'who_topic.g.dart';

@JsonSerializable()
class WHOTopic {
  final String title;
  final List<WHOData> questions;

  WHOTopic({this.title, this.questions});

  factory WHOTopic.fromJson(Map<String, dynamic> json) =>
      _$WHOTopicFromJson(json);
  Map<String, dynamic> toJSON() => _$WHOTopicToJson(this);
}
