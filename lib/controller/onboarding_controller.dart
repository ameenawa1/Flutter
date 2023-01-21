import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/routes.dart';
import 'package:junior_project/core/services/services.dart';
import 'package:junior_project/data/datasource/static/static.dart';
=======
import 'package:business_card/core/constant/routes.dart';
import 'package:business_card/core/services/services.dart';
import 'package:business_card/data/datasource/static/static.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int pageindex);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;
  MyServices myServices = Get.find();
  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      myServices.sharedPreferences.setString("onboarding", "1");
      Get.offAllNamed(AppRoute.welcome);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int pageindex) {
    currentPage = pageindex;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
