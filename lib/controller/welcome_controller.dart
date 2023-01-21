import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:junior_project/core/constant/color.dart';
import 'package:junior_project/core/constant/routes.dart';
import 'package:junior_project/core/services/services.dart';

abstract class WelcomeController extends GetxController {
  login();
  signup();
}

class WelcomeControllerImp extends WelcomeController {
  late PageController pageController;
  MyServices myServices = Get.find();
  @override
  login() {
    Get.offAllNamed(AppRoute.login);
  }

  @override
  signup() {
    Get.offAllNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    AppColor.changecolor(myServices.sharedPreferences.getInt("appcolor") ?? 0);
    pageController = PageController();
    super.onInit();
  }
}
