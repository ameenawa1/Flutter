// ignore_for_file: annotate_overrides, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/routes.dart';
import 'package:junior_project/core/services/services.dart';
=======
import 'package:business_card/core/constant/routes.dart';
import 'package:business_card/core/services/services.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class MyMiddleWare extends GetMiddleware {
  int? get priority => 1;
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onboarding") == "1") {
      return const RouteSettings(name: AppRoute.welcome);
    }
  }
}
