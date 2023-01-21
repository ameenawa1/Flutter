import 'dart:developer';

import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/routes.dart';
import 'package:junior_project/core/models/verify.dart';

import '../../core/repositries/back_end_repo.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkcode();
  goToSuccessSignUp(String code);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  String? email;
  @override
  checkcode() {}

  @override
  goToSuccessSignUp(String code) async {
    BackEndRepo backEndRepo = Get.find<BackEndRepo>();
    Verify data = Verify(
      verifycode: code.hashCode,
      email: email,
    );
    var response = await backEndRepo.verify(data);
    log(response.toString());

    Get.offNamed(AppRoute.succsesssignup);
=======
import 'package:business_card/core/constant/routes.dart';
import 'package:business_card/core/models/auth.dart';
import 'package:business_card/core/services/app_service.dart';

import '../../core/repositries/back_end_repo.dart';

class VerifyCodeSignUpControllerImp extends GetxController {
  String? email;
  String? code;

  goToSuccessSignUp() async {
    BackEndRepo backEndRepo = Get.find<BackEndRepo>();
try {
  var response = await backEndRepo.verify(code: code, email: email);

  log(response.toString());
  AppService appService = Get.find<AppService>();
  Auth auth = Auth.fromJson(response);
  // appService.setToken(auth.token!); //to
  log(appService.token ?? "null");

  await Get.offNamed(AppRoute.succsesssignup);
}
catch (e){}
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
<<<<<<< HEAD
=======

>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
    super.onInit();
  }
}
