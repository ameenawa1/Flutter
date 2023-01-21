import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:business_card/core/constant/routes.dart';

import '../../core/repositries/back_end_repo.dart';

class ResetPasswordControllerImp extends GetxController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController password;
  late TextEditingController confirmpassword;
  String? email;

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
  resetpassword() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      BackEndRepo backEndRepo = Get.find<BackEndRepo>();
      var response = await backEndRepo.resetpassword(
          email: email,
          newpass: password.text,
          confirmpass: confirmpassword.text);
      log(response.toString());

      printError(info: "Valid");
    } else {
      printError(info: "Not Valid Input");
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    confirmpassword = TextEditingController();
    email = Get.arguments;
    log("this is my email $email");
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
