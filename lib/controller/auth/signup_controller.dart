import 'dart:developer';

<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:junior_project/core/constant/routes.dart';
import 'package:junior_project/core/models/user.dart';
import 'package:junior_project/core/repositries/back_end_repo.dart';
=======
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:business_card/controller/auth/verifycodesignup_controller.dart';
import 'package:business_card/core/constant/routes.dart';
import 'package:business_card/core/models/user.dart';
import 'package:business_card/core/models/auth.dart';
import 'package:business_card/core/repositries/back_end_repo.dart';
import 'package:business_card/core/services/app_service.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

abstract class SignUpController extends GetxController {
  signup();
  goToLogin();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController firstname;
  late TextEditingController lastname;
  late TextEditingController email;
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
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  signup() async {
    var formdata = formstate.currentState;

    if (formdata!.validate()) {
<<<<<<< HEAD
      // BackEndRepo backEndRepo = Get.find<BackEndRepo>();
      // User user =User(
      //   firstName: firstname.text,
      //   lastName: lastname.text,
      //   password: password.text,
      //   confirmPassword:confirmpassword.text,
      //   email:email.text,
      // );
      //  var response= await backEndRepo.signup(user);
      // log(response.toString());
      Get.toNamed(AppRoute.verifycodesignup, arguments: {"email": email.text});
=======
      try {
        BackEndRepo backEndRepo = Get.find<BackEndRepo>();
        User user = User(
          firstName: firstname.text,
          lastName: lastname.text,
          password: password.text,
          confirmPassword: confirmpassword.text,
          email: email.text,
        );
        await backEndRepo.signup(user);

        Get.toNamed(AppRoute.verifycodesignup,
            arguments: {"email": email.text});
      } on DioError catch (e) {
        if (e.response?.statusCode == 422) {
          //show dialog Get.dialog()
        }
      }
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
    } else {
      printError(info: "Not Valid Input");
    }
  }

  @override
  void onInit() {
    firstname = TextEditingController();
    lastname = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    confirmpassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    firstname.dispose();
    lastname.dispose();
    email.dispose();
    password.dispose();
    confirmpassword.dispose();
    super.dispose();
  }
}
