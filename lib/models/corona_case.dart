import 'package:CoronaTracker/models/corona_case_total_count.dart';
import 'package:json_annotation/json_annotation.dart';

part 'corona_case.g.dart';

@JsonSerializable()
class CoronaCase {
  @JsonKey(name: "OBJECTID")
  final int id;

  @JsonKey(name: "Province_State", defaultValue: '')
  final String state;

  @JsonKey(name: "Country_Region", defaultValue: '')
  final String country;

  // @JsonKey(name: "Last_Update")
  // final DateTime lastUpdatedAt;

  @JsonKey(name: "Lat")
  final double latitude;

  @JsonKey(name: "Long_")
  final double longitude;

  @JsonKey(name: "Confirmed")
  final int confirmed;

  @JsonKey(name: "Deaths")
  final int deaths;

  @JsonKey(name: "Recovered")
  final int recovered;

  CoronaCase(
      {this.id,
      this.state,
      this.country,
      // this.lastUpdatedAt,
      this.latitude,
      this.longitude,
      this.confirmed,
      this.deaths,
      this.recovered});

  CoronaTotalCount get totalCount {
    return CoronaTotalCount(
        confirmed: confirmed, deaths: deaths, recovered: recovered);
  }

  factory CoronaCase.fromJson(Map<String, dynamic> json) =>
      _$CoronaCaseFromJson(json);
  Map<String, dynamic> toJSON() => _$CoronaCaseToJson(this);
}
