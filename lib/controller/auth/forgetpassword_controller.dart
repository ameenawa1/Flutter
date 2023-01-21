<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:junior_project/core/constant/routes.dart';
=======
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:business_card/core/constant/routes.dart';

import '../../core/repositries/back_end_repo.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

abstract class ForgetPasswordController extends GetxController {
  goToVerfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;

  @override
<<<<<<< HEAD
  goToVerfiyCode() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      printInfo(info: "Valid");
      Get.offNamed(AppRoute.verifycode);
    } else {
      printError(info: "Not Valid Input");
    }
=======
  goToVerfiyCode() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      BackEndRepo backEndRepo = Get.find<BackEndRepo>();

      var response = await backEndRepo.changepassword(email: email.text);
      log(response.toString());

      printInfo(info: "Valid");
    } else {
      printError(info: "Not Valid Input");
    }
    log(email.text);
    Get.offNamed(AppRoute.verifycode, arguments: {"email": email.text});
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
