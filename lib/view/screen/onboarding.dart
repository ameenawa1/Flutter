import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:junior_project/controller/onboarding_controller.dart';
import 'package:junior_project/core/constant/color.dart';
import 'package:junior_project/view/widget/onboarding/custombutton.dart';
import 'package:junior_project/view/widget/onboarding/customslider.dart';
import 'package:junior_project/view/widget/onboarding/dotcontroller.dart';
=======
import 'package:business_card/controller/onboarding_controller.dart';
import 'package:business_card/core/constant/color.dart';
import 'package:business_card/view/widget/onboarding/custombutton.dart';
import 'package:business_card/view/widget/onboarding/customslider.dart';
import 'package:business_card/view/widget/onboarding/dotcontroller.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        backgroundColor: AppColor.white,
        body: Center(
          child: Container(
<<<<<<< HEAD
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
=======
            height: MediaQuery.of(context).size.height - 140,
            decoration: BoxDecoration(
                color: AppColor.white, borderRadius: BorderRadius.circular(15)),
            padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
            // width: MediaQuery.of(context).size.width - 50,
            child: Column(children: [
              const Expanded(
                flex: 3,
                child: CustomSliderOnBoarding(),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      CustomDotControllerOnBoarding(),
                      Spacer(
                        flex: 2,
                      ),
                      CustomButtonOnBoarding(),
                    ],
                  ))
            ]),
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
          ),
        ));
  }
}
