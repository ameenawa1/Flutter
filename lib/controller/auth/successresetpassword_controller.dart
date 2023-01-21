import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/routes.dart';
=======
import 'package:business_card/core/constant/routes.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

abstract class SuccessResetPasswordController extends GetxController {
  goToPageLogin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
