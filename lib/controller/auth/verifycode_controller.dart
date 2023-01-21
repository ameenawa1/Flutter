<<<<<<< HEAD
import 'package:get/get.dart';
import 'package:junior_project/core/constant/routes.dart';

abstract class VerifyCodeController extends GetxController {
  checkcode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifycode;

  @override
  checkcode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetpassword);
=======
import 'dart:developer';

import 'package:get/get.dart';
import 'package:business_card/core/constant/routes.dart';

import '../../core/repositries/back_end_repo.dart';

class VerifyCodeControllerImp extends GetxController {
  late String verifycode;
  String? email;
  String? code;
  goToResetPassword() async {
    BackEndRepo backEndRepo = Get.find<BackEndRepo>();

    var response = await backEndRepo.verify(code: code, email: email);
    log(response.toString());
    Get.offNamed(AppRoute.resetpassword, arguments: email);
  }

  @override
  void onInit() {
    email = Get.arguments['email'];

    super.onInit();
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
  }
}
