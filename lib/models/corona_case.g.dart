// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corona_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoronaCase _$CoronaCaseFromJson(Map<String, dynamic> json) {
  return CoronaCase(
    id: json['OBJECTID'] as int,
    state: json['Province_State'] as String ?? '',
    country: json['Country_Region'] as String ?? '',
    latitude: (json['Lat'] as num)?.toDouble(),
    longitude: (json['Long_'] as num)?.toDouble(),
    confirmed: json['Confirmed'] as int,
    deaths: json['Deaths'] as int,
    recovered: json['Recovered'] as int,
  );
}

Map<String, dynamic> _$CoronaCaseToJson(CoronaCase instance) =>
    <String, dynamic>{
      'OBJECTID': instance.id,
      'Province_State': instance.state,
      'Country_Region': instance.country,
      'Lat': instance.latitude,
      'Long_': instance.longitude,
      'Confirmed': instance.confirmed,
      'Deaths': instance.deaths,
      'Recovered': instance.recovered,
    };
