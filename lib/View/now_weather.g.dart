// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

now_weather _$now_weatherFromJson(Map<String, dynamic> json) => now_weather(
      Location.fromJson(json['location'] as Map<String, dynamic>),
      Current.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$now_weatherToJson(now_weather instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      json['name'] as String,
      json['region'] as String,
      json['country'] as String,
      (json['lat'] as num).toDouble(),
      (json['lon'] as num).toDouble(),
      json['tz_id'] as String,
      json['localtime_epoch'] as int,
      json['localtime'] as String,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tz_id': instance.tzId,
      'localtime_epoch': instance.localtimeEpoch,
      'localtime': instance.localtime,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      json['last_updated_epoch'] as int,
      json['last_updated'] as String,
      (json['temp_c'] as num).toDouble(),
      (json['temp_f'] as num).toDouble(),
      json['is_day'] as int,
      Condition.fromJson(json['condition'] as Map<String, dynamic>),
      (json['wind_mph'] as num).toDouble(),
      (json['wind_kph'] as num).toDouble(),
      json['wind_degree'] as int,
      json['wind_dir'] as String,
      (json['pressure_mb'] as num).toDouble(),
      (json['pressure_in'] as num).toDouble(),
      (json['precip_mm'] as num).toDouble(),
      (json['precip_in'] as num).toDouble(),
      json['humidity'] as int,
      json['cloud'] as int,
      (json['feelslike_c'] as num).toDouble(),
      (json['feelslike_f'] as num).toDouble(),
      (json['vis_km'] as num).toDouble(),
      (json['vis_miles'] as num).toDouble(),
      (json['uv'] as num).toDouble(),
      (json['gust_mph'] as num).toDouble(),
      (json['gust_kph'] as num).toDouble(),
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'last_updated_epoch': instance.lastUpdatedEpoch,
      'last_updated': instance.lastUpdated,
      'temp_c': instance.tempC,
      'temp_f': instance.tempF,
      'is_day': instance.isDay,
      'condition': instance.condition,
      'wind_mph': instance.windMph,
      'wind_kph': instance.windKph,
      'wind_degree': instance.windDegree,
      'wind_dir': instance.windDir,
      'pressure_mb': instance.pressureMb,
      'pressure_in': instance.pressureIn,
      'precip_mm': instance.precipMm,
      'precip_in': instance.precipIn,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslike_c': instance.feelslikeC,
      'feelslike_f': instance.feelslikeF,
      'vis_km': instance.visKm,
      'vis_miles': instance.visMiles,
      'uv': instance.uv,
      'gust_mph': instance.gustMph,
      'gust_kph': instance.gustKph,
    };

Condition _$ConditionFromJson(Map<String, dynamic> json) => Condition(
      json['text'] as String,
      json['icon'] as String,
      json['code'] as int,
    );

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };
