import 'dart:convert' show json;

T asT<T>(dynamic value) {
  if (value is T) {
    return value;
  }
  return null;
}

class NowWeatherModel {
  NowWeatherModel({
    this.obsTime,
    this.temp, // 温度，默认单位：摄氏度
    this.feelsLike, //体感温度
    this.icon, // 实况天气状况代码
    this.text, // 实况天气状况描述
    this.wind360, // 风向360角度
    this.windDir, // 风向
    this.windScale, // 风力
    this.windSpeed, // 风速，公里/小时
    this.humidity, // 相对湿度
    this.precip,
    this.pressure,
    this.vis,
    this.cloud,
    this.dew,
  });

  factory NowWeatherModel.fromJson(Map<String, dynamic> jsonRes) =>
      jsonRes == null
          ? null
          : NowWeatherModel(
              obsTime: asT<String>(jsonRes['obsTime']),
              temp: asT<String>(jsonRes['temp']),
              feelsLike: asT<String>(jsonRes['feelsLike']),
              icon: asT<String>(jsonRes['icon']),
              text: asT<String>(jsonRes['text']),
              wind360: asT<String>(jsonRes['wind360']),
              windDir: asT<String>(jsonRes['windDir']),
              windScale: asT<String>(jsonRes['windScale']),
              windSpeed: asT<String>(jsonRes['windSpeed']),
              humidity: asT<String>(jsonRes['humidity']),
              precip: asT<String>(jsonRes['precip']),
              pressure: asT<String>(jsonRes['pressure']),
              vis: asT<String>(jsonRes['vis']),
              cloud: asT<String>(jsonRes['cloud']),
              dew: asT<String>(jsonRes['dew']),
            );

  String obsTime;
  String temp;
  String feelsLike;
  String icon;
  String text;
  String wind360;
  String windDir;
  String windScale;
  String windSpeed;
  String humidity;
  String precip;
  String pressure;
  String vis;
  String cloud;
  String dew;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'obsTime': obsTime,
        'temp': temp,
        'feelsLike': feelsLike,
        'icon': icon,
        'text': text,
        'wind360': wind360,
        'windDir': windDir,
        'windScale': windScale,
        'windSpeed': windSpeed,
        'humidity': humidity,
        'precip': precip,
        'pressure': pressure,
        'vis': vis,
        'cloud': cloud,
        'dew': dew,
      };

  @override
  String toString() {
    return json.encode(this);
  }
}
