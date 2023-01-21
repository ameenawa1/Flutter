import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:junior_project/core/constant/routes.dart';

abstract class ForgetPasswordController extends GetxController {
  goToVerfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;

  @override
  goToVerfiyCode() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      printInfo(info: "Valid");
      Get.offNamed(AppRoute.verifycode);
    } else {
      printError(info: "Not Valid Input");
    }
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
