import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:junior_project/controller/onboarding_controller.dart';
import 'package:junior_project/core/constant/color.dart';
import 'package:junior_project/data/datasource/static/static.dart';
=======
import 'package:business_card/controller/onboarding_controller.dart';
import 'package:business_card/core/constant/color.dart';
import 'package:business_card/data/datasource/static/static.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 900),
                          width: controller.currentPage == index ? 20 : 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            ));
  }
}
