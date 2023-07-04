library home_view;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather/features/app/home_screen/controller/home_controller.dart';
import 'package:weather/utils/extensions/color_resource.dart';
import 'package:weather/widgets/text_app.dart';

part '../components/header.dart';

part '../components/temperature.dart';

part '../components/expected_temperature.dart';

class HomeScreen extends GetView<HomeController> {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Obx(() {
          return controller.loading.isTrue
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorResource.darkBlue,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Center(child: Text("💯${controller.weather.current!.condition!.icon}")),
                          Header(
                            location:
                                controller.weather.location!.name.toString(),
                            date: controller.weather.location!.localtime
                                .toString(),
                          ),
                          SizedBox(height: 80.h),
                          Temperature(
                              temperature:
                                  controller.weather.current!.tempC.toString(),
                              airQuality: controller
                                  .weather.current!.airQuality!.usEpaIndex
                                  .toString()),
                          SizedBox(height: 20.h),
                          ExpectedTemperature(
                            days: controller.weather.forecast!
                                .forecastday!.first.date!
                                .toString(),
                            date: controller.weather.forecast!
                                .forecastday!.first.date!
                                .toString(),
                            maxTemperature: controller.weather.forecast!
                                .forecastday!.first.day!.maxtempC
                                .toString(),
                            minTemperature: controller.weather.forecast!
                                .forecastday!.first.day!.mintempC
                                .toString(),
                          ),
                          SizedBox(height: 20.h),
                          SizedBox(height: 80.h),
                          SizedBox(height: 550.h),
                        ]),
                  ),
                );
        }),
      ),
    );
  }
}
