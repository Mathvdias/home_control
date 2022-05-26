import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:home_control/src/app/url_base.dart';
import 'package:home_control/src/modules/pages/temperature/model/temperature_model.dart';

class TemperatureController extends ChangeNotifier {
  var temperatureData = CardTemperatureModel();

  Future<CardTemperatureModel> getTemperature() async {
    var dio = Dio();
    var url = "sensorBme";
    var response = await dio.get("$raspberryHttpUrl$url");

    return CardTemperatureModel.fromJson(response.data);
  }

  Future<void> fetchTemperatureData() async {
    var response = await getTemperature();
    if (response.humidity != null &&
        response.pressure != null &&
        response.temperature != null) {
      temperatureData = response;
    } else {
      temperatureData =
          CardTemperatureModel(humidity: 0, temperature: 0, pressure: 0);
    }
    print(response);
    notifyListeners();
  }
}
