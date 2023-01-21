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
  }
}
