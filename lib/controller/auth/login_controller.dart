import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/routes.dart';
import 'package:junior_project/core/models/user.dart';
import 'package:junior_project/core/repositries/back_end_repo.dart';
=======
import 'package:business_card/core/constant/routes.dart';
import 'package:business_card/core/models/auth.dart';
import 'package:business_card/core/models/user.dart';
import 'package:business_card/core/repositries/back_end_repo.dart';
import 'package:business_card/core/services/app_service.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

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
<<<<<<< HEAD
      // BackEndRepo backEndRepo = Get.find<BackEndRepo>();
      // User user =User(
      //   email: email.text,
      //   password: password.text
      // );
      // var response =await backEndRepo.login(user);
      // log(response.toString());
      Get.offNamed(AppRoute.createcard);
=======
      BackEndRepo backEndRepo = Get.find<BackEndRepo>();

      var response =
          await backEndRepo.login(email: email.text, password: password.text);

      AppService appService = Get.find<AppService>();
      log(response.toString(), name: "response");
      Auth auth = Auth.fromJson(response);
      appService.setToken(auth.token!); //tosave
      log(appService.token ?? "null");
      log(response.toString());
      if(auth.card!=null){
        Get.offAllNamed(AppRoute.home);
      }
      else{
        Get.offAllNamed(AppRoute.createcard);
      }
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
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
