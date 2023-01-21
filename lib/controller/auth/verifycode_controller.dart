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
  }
}
