import 'package:get/get.dart';
import 'package:junior_project/core/constant/routes.dart';

choosescannedcard(int templatenumber) {
  if (templatenumber == 0) {
    Get.offAllNamed(AppRoute.viewscannedcard);
  }
  if (templatenumber == 1) {
    Get.offAllNamed(AppRoute.viewscannedcard1);
  }
  if (templatenumber == 2) {
    Get.offAllNamed(AppRoute.viewscannedcard2);
  }
  if (templatenumber == 3) {
    Get.offAllNamed(AppRoute.viewscannedcard3);
  }
}
