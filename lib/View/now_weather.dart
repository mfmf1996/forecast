import 'package:json_annotation/json_annotation.dart';

part 'now_weather.g.dart';


@JsonSerializable()
class now_weather extends Object {

  @JsonKey(name: 'location')
  Location location;

  @JsonKey(name: 'current')
  Current current;

  now_weather(this.location,this.current,);

  factory now_weather.fromJson(Map<String, dynamic> srcJson) => _$now_weatherFromJson(srcJson);

  Map<String, dynamic> toJson() => _$now_weatherToJson(this);

}


@JsonSerializable()
class Location extends Object {

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'region')
  String region;

  @JsonKey(name: 'country')
  String country;

  @JsonKey(name: 'lat')
  double lat;

  @JsonKey(name: 'lon')
  double lon;

  @JsonKey(name: 'tz_id')
  String tzId;

  @JsonKey(name: 'localtime_epoch')
  int localtimeEpoch;

  @JsonKey(name: 'localtime')
  String localtime;

  Location(this.name,this.region,this.country,this.lat,this.lon,this.tzId,this.localtimeEpoch,this.localtime,);

  factory Location.fromJson(Map<String, dynamic> srcJson) => _$LocationFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

}


@JsonSerializable()
class Current extends Object {

  @JsonKey(name: 'last_updated_epoch')
  int lastUpdatedEpoch;

  @JsonKey(name: 'last_updated')
  String lastUpdated;

  @JsonKey(name: 'temp_c')
  double tempC;

  @JsonKey(name: 'temp_f')
  double tempF;

  @JsonKey(name: 'is_day')
  int isDay;

  @JsonKey(name: 'condition')
  Condition condition;

  @JsonKey(name: 'wind_mph')
  double windMph;

  @JsonKey(name: 'wind_kph')
  double windKph;

  @JsonKey(name: 'wind_degree')
  int windDegree;

  @JsonKey(name: 'wind_dir')
  String windDir;

  @JsonKey(name: 'pressure_mb')
  double pressureMb;

  @JsonKey(name: 'pressure_in')
  double pressureIn;

  @JsonKey(name: 'precip_mm')
  double precipMm;

  @JsonKey(name: 'precip_in')
  double precipIn;

  @JsonKey(name: 'humidity')
  int humidity;

  @JsonKey(name: 'cloud')
  int cloud;

  @JsonKey(name: 'feelslike_c')
  double feelslikeC;

  @JsonKey(name: 'feelslike_f')
  double feelslikeF;

  @JsonKey(name: 'vis_km')
  double visKm;

  @JsonKey(name: 'vis_miles')
  double visMiles;

  @JsonKey(name: 'uv')
  double uv;

  @JsonKey(name: 'gust_mph')
  double gustMph;

  @JsonKey(name: 'gust_kph')
  double gustKph;

  Current(this.lastUpdatedEpoch,this.lastUpdated,this.tempC,this.tempF,this.isDay,this.condition,this.windMph,this.windKph,this.windDegree,this.windDir,this.pressureMb,this.pressureIn,this.precipMm,this.precipIn,this.humidity,this.cloud,this.feelslikeC,this.feelslikeF,this.visKm,this.visMiles,this.uv,this.gustMph,this.gustKph,);

  factory Current.fromJson(Map<String, dynamic> srcJson) => _$CurrentFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);

}


@JsonSerializable()
class Condition extends Object {

  @JsonKey(name: 'text')
  String text;

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'code')
  int code;

  Condition(this.text,this.icon,this.code,);

  factory Condition.fromJson(Map<String, dynamic> srcJson) => _$ConditionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ConditionToJson(this);

}


