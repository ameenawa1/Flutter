import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:junior_project/controller/welcome_controller.dart';
import 'package:junior_project/core/constant/color.dart';
=======
import 'package:business_card/controller/welcome_controller.dart';
import 'package:business_card/core/constant/color.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class WelcomeLoginButton extends GetView<WelcomeControllerImp> {
  const WelcomeLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 55,
      onPressed: () {
        controller.login();
      },
      shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColor.primaryColor),
          borderRadius: BorderRadius.circular(50)),
      child: Text(
        "Login",
        style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColor.primaryColor,
            fontSize: 20),
      ),
    );
  }
}
