import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/color.dart';
import 'package:junior_project/core/constant/routes.dart';
import 'package:junior_project/core/services/services.dart';
=======
import 'package:business_card/core/constant/routes.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

abstract class WelcomeController extends GetxController {
  login();
  signup();
}

class WelcomeControllerImp extends WelcomeController {
  late PageController pageController;
<<<<<<< HEAD
  MyServices myServices = Get.find();
=======
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
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
<<<<<<< HEAD
    AppColor.changecolor(myServices.sharedPreferences.getInt("appcolor") ?? 0);
=======
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
    pageController = PageController();
    super.onInit();
  }
}
