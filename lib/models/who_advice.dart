import 'package:CoronaTracker/models/who_data.dart';
import 'package:CoronaTracker/models/who_topic.dart';
import 'package:json_annotation/json_annotation.dart';

part 'who_advice.g.dart';

@JsonSerializable()
class WHOAdvice {
  final String title;
  final String subtitle;
  final List<WHOData> basics;
  final List<WHOTopic> topics;

  WHOAdvice({this.title, this.subtitle, this.basics, this.topics});

  factory WHOAdvice.fromJson(Map<String, dynamic> json) =>
      _$WHOAdviceFromJson(json);
  Map<String, dynamic> toJSON() => _$WHOAdviceToJson(this);
}
