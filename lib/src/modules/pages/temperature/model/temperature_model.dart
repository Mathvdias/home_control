class CardTemperatureModel {
  double? temperature;
  double? pressure;
  int? humidity;

  CardTemperatureModel({this.temperature, this.pressure, this.humidity});

  CardTemperatureModel.fromJson(Map<String, dynamic> json) {
    temperature = json['temperature'];
    pressure = json['pressure'];
    humidity = json['humidity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['temperature'] = temperature;
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    return data;
  }
}