class WeatherModel {
  final String cityName;
  final DateTime date;
  final String? image;
  final double temp;
  final double minTemp;
  final double maxTemp;
  final String weatherCondition;
  const WeatherModel({
    required this.cityName,
    required this.date,
    required this.image,
    required this.maxTemp,
    required this.minTemp,
    required this.temp,
    required this.weatherCondition,
  });
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: DateTime.parse(json['current']['last_updated']).toLocal(),
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      weatherCondition:
          json['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
