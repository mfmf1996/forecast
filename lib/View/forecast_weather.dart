import 'package:json_annotation/json_annotation.dart';

part 'forecast_weather.g.dart';


@JsonSerializable()
class forecast_weather extends Object {

  @JsonKey(name: 'location')
  Location location;

  @JsonKey(name: 'current')
  Current current;

  @JsonKey(name: 'forecast')
  Forecast forecast;

  forecast_weather(this.location,this.current,this.forecast,);

  factory forecast_weather.fromJson(Map<String, dynamic> srcJson) => _$forecast_weatherFromJson(srcJson);

  Map<String, dynamic> toJson() => _$forecast_weatherToJson(this);

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

  Current(this.lastUpdatedEpoch,this.lastUpdated,this.tempC,this.tempF,this.isDay,this.windMph,this.windKph,this.windDegree,this.windDir,this.pressureMb,this.pressureIn,this.precipMm,this.precipIn,this.humidity,this.cloud,this.feelslikeC,this.feelslikeF,this.visKm,this.visMiles,this.uv,this.gustMph,this.gustKph,);

  factory Current.fromJson(Map<String, dynamic> srcJson) => _$CurrentFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);

}



@JsonSerializable()
class Forecast extends Object {

  @JsonKey(name: 'forecastday')
  List<Forecastday> forecastday;

  Forecast(this.forecastday,);

  factory Forecast.fromJson(Map<String, dynamic> srcJson) => _$ForecastFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ForecastToJson(this);

}


@JsonSerializable()
class Forecastday extends Object {

  @JsonKey(name: 'date')
  String date;

  @JsonKey(name: 'date_epoch')
  int dateEpoch;

  @JsonKey(name: 'day')
  Day day;



  Forecastday(this.date,this.dateEpoch,this.day,);

  factory Forecastday.fromJson(Map<String, dynamic> srcJson) => _$ForecastdayFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ForecastdayToJson(this);

}


@JsonSerializable()
class Day extends Object {

  @JsonKey(name: 'maxtemp_c')
  double maxtempC;

  @JsonKey(name: 'maxtemp_f')
  double maxtempF;

  @JsonKey(name: 'mintemp_c')
  double mintempC;

  @JsonKey(name: 'mintemp_f')
  double mintempF;

  @JsonKey(name: 'avgtemp_c')
  double avgtempC;

  @JsonKey(name: 'avgtemp_f')
  double avgtempF;

  @JsonKey(name: 'maxwind_mph')
  double maxwindMph;

  @JsonKey(name: 'maxwind_kph')
  double maxwindKph;

  @JsonKey(name: 'totalprecip_mm')
  double totalprecipMm;

  @JsonKey(name: 'totalprecip_in')
  double totalprecipIn;

  @JsonKey(name: 'avgvis_km')
  double avgvisKm;

  @JsonKey(name: 'avgvis_miles')
  double avgvisMiles;

  @JsonKey(name: 'avghumidity')
  double avghumidity;

  @JsonKey(name: 'daily_will_it_rain')
  int dailyWillItRain;

  @JsonKey(name: 'daily_chance_of_rain')
  int dailyChanceOfRain;

  @JsonKey(name: 'daily_will_it_snow')
  int dailyWillItSnow;

  @JsonKey(name: 'daily_chance_of_snow')
  int dailyChanceOfSnow;

  @JsonKey(name: 'condition')
  Condition condition;

  @JsonKey(name: 'uv')
  double uv;

  Day(this.maxtempC,this.maxtempF,this.mintempC,this.mintempF,this.avgtempC,this.avgtempF,this.maxwindMph,this.maxwindKph,this.totalprecipMm,this.totalprecipIn,this.avgvisKm,this.avgvisMiles,this.avghumidity,this.dailyWillItRain,this.dailyChanceOfRain,this.dailyWillItSnow,this.dailyChanceOfSnow,this.condition,this.uv,);

  factory Day.fromJson(Map<String, dynamic> srcJson) => _$DayFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DayToJson(this);

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


