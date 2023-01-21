<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:junior_project/core/constant/routes.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword();
  goTologin();
  goToSuccses();
}

class ResetPasswordControllerImp extends ResetPasswordController {
=======
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:business_card/core/constant/routes.dart';

import '../../core/repositries/back_end_repo.dart';

class ResetPasswordControllerImp extends GetxController {
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController password;
  late TextEditingController confirmpassword;
<<<<<<< HEAD
=======
  String? email;
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

  bool hidepassword = true;

  showPassword() {
    if (hidepassword == true) {
      hidepassword = false;
    } else {
      hidepassword = true;
    }
    update();
  }

  @override
<<<<<<< HEAD
  resetpassword() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
=======
  resetpassword() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      BackEndRepo backEndRepo = Get.find<BackEndRepo>();
      var response = await backEndRepo.resetpassword(
          email: email,
          newpass: password.text,
          confirmpass: confirmpassword.text);
      log(response.toString());

>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
      printError(info: "Valid");
    } else {
      printError(info: "Not Valid Input");
    }
  }

  @override
<<<<<<< HEAD
  goTologin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    password = TextEditingController();
    confirmpassword = TextEditingController();
=======
  void onInit() {
    password = TextEditingController();
    confirmpassword = TextEditingController();
    email = Get.arguments;
    log("this is my email $email");
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
    super.onInit();
  }

  @override
  goToSuccses() {
    Get.offNamed(AppRoute.succsessresetpassword);
  }

  @override
  void dispose() {
    password.dispose();
    confirmpassword.dispose();
    super.dispose();
  }
}
