import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:junior_project/core/constant/routes.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword();
  goTologin();
  goToSuccses();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController password;
  late TextEditingController confirmpassword;

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
  resetpassword() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      printError(info: "Valid");
    } else {
      printError(info: "Not Valid Input");
    }
  }

  @override
  goTologin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    password = TextEditingController();
    confirmpassword = TextEditingController();
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
