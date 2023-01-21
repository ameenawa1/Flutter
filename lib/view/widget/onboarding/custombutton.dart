import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:junior_project/controller/onboarding_controller.dart';
import 'package:junior_project/core/constant/color.dart';
=======
import 'package:business_card/controller/onboarding_controller.dart';
import 'package:business_card/core/constant/color.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
        margin: const EdgeInsets.only(bottom: 80, top: 50),
=======
        margin: const EdgeInsets.only(bottom: 40),
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width - 40,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          onPressed: () {
            controller.next();
          },
          color: AppColor.primaryColor,
          child: Text(
            "Continue",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColor.white),
          ),
        ));
  }
}
