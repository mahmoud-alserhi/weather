import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../helpers/helpers.dart';
import '../../../apis/api_settings.dart';
import '../../../models/weather/weather_model.dart';

class WeatherApiController with Helpers{

  Future<WeatherModel> showHomeLayout(/*{required String location}*/) async {
    var url = Uri.parse('https://api.weatherapi.com/v1/forecast.json?key=${ApiSettings.apiKey}&q=Palestine&days=5&aqi=yes&alerts=no');
    // var url = Uri.parse('https://api.weatherapi.com/v1/forecast.json?key=${ApiSettings.apiKey}&q=$location&days=5&aqi=yes&alerts=no');
    var response = await http.post(
      url,
      headers: headers
    );
    if (response.statusCode == 200) {
      debugPrint('💯 ${response.body}');
      var weatherJsonArray = jsonDecode(response.body);
      WeatherModel homeModel = WeatherModel.fromJson(weatherJsonArray);
      debugPrint('💯 $homeModel');
      return homeModel;

    }else{
/////////////////
      debugPrint('mmm faild =>${response.body}');
      throw Exception('Failed');
    }
  }

}