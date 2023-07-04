import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../prefs/shared_pref_controller.dart';
import '../utils/extensions/color_resource.dart';
import '../utils/extensions/routes/key_routes.dart';

mixin Helpers{

  void showSnackBar({
    required BuildContext context,
    required String message,
    bool error = false
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message),
          backgroundColor: error ? ColorResource.red : ColorResource.green,
          behavior: SnackBarBehavior.floating,duration: const Duration(seconds: 2),
          margin: EdgeInsetsDirectional.only(bottom: 20.h,start: 20.w,end: 20.w),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r)
          ),
          //This is New Property to dismiss snackBar
          dismissDirection: DismissDirection.horizontal,
        )
    );
  }


  Map<String,String> get headers {
    var headers ={
      "Transfer-Encoding": "chunked",
      "Connection": "keep-alive",
      "Vary": "Accept-Encoding",
      "CDN-PullZone": "93447",
      "CDN-Uid": "8fa3a04a-75d9-4707-8056-b7b33c8ac7fe",
      "CDN-RequestCountryCode": "GB",
      "CDN-ProxyVer": "1.03",
      "CDN-RequestPullSuccess": "True",
      "CDN-RequestPullCode": "200",
      "CDN-CachedAt": "07/04/2023 11:06:47",
      "CDN-EdgeStorageId": "951",
      "CDN-Status": "200",
      "CDN-RequestId": "963a7482ebe2b39cace379305e07d8d6",
      "CDN-Cache": "MISS",
      "Cache-Control": "public, max-age=180",
      "Content-Type": "application/json",
      "Date": "Tue, 04 Jul 2023 11:06:47 GMT",
      "Server": "BunnyCDN-FR1-946"
    };
    return headers;
  }




}