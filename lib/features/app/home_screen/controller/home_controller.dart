import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import '../../../../utils/get/weather_api/weather_api/weather_api.dart';
import '../../../../utils/models/weather/weather_model.dart';



class HomeController extends GetxController {

  RxBool loading = true.obs;
  late Position currentPosition;

  static HomeController get to => Get.find<HomeController>();

  WeatherModel weather = WeatherModel();

  WeatherApiController weatherApiController = WeatherApiController();

  @override
  void onInit() {
    getMyData();
    super.onInit();
  }

  Future<void> getMyData() async {
    loading.value = true;
    await determinePosition();
    weather = await weatherApiController.showHomeLayout();
    // weather = await weatherApiController.showHomeLayout(location: currentPosition.latitude);
    debugPrint('mmm weather =>$weather💯💯');
    loading.value = false;
  }

  Future<void> determinePosition() async {

    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    LocationPermission permission = await Geolocator.checkPermission();
    if (!serviceEnabled) {
      debugPrint("Location in disable");
      permission = await Geolocator.requestPermission();
      return gitCurrentLocation();
    }
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        debugPrint("Location in denied");
        permission = await Geolocator.requestPermission();
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      debugPrint("Location in denied forever");
      await Geolocator.openAppSettings();
      return;
    }

    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      debugPrint("Location in whileInUse or always");
      return gitCurrentLocation();
    }

    await gitCurrentLocation();
  }

  Future<void> gitCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition();
    debugPrint('mmm P =>$position');
    currentPosition = position;
  }




}