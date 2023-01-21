import 'dart:developer';

import 'package:get/get.dart';
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
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
