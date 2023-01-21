import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:junior_project/core/constant/routes.dart';
import 'package:junior_project/core/models/user.dart';
import 'package:junior_project/core/repositries/back_end_repo.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
  login() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      // BackEndRepo backEndRepo = Get.find<BackEndRepo>();
      // User user =User(
      //   email: email.text,
      //   password: password.text
      // );
      // var response =await backEndRepo.login(user);
      // log(response.toString());
      Get.offNamed(AppRoute.createcard);
    } else {
      printError(info: "Not Valid Input");
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.offNamed(AppRoute.forgetpassword);
  }
}
