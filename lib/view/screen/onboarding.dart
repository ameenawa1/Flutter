import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:junior_project/controller/onboarding_controller.dart';
import 'package:junior_project/core/constant/color.dart';
import 'package:junior_project/view/widget/onboarding/custombutton.dart';
import 'package:junior_project/view/widget/onboarding/customslider.dart';
import 'package:junior_project/view/widget/onboarding/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        backgroundColor: AppColor.white,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                color: AppColor.white, borderRadius: BorderRadius.circular(15)),
            padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
            width: MediaQuery.of(context).size.width - 30,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  CustomSliderOnBoarding(),
                  CustomDotControllerOnBoarding(),
                  CustomButtonOnBoarding()
                ]),
          ),
        ));
  }
}
