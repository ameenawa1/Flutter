import 'package:get/get.dart';
<<<<<<< HEAD
=======
import 'package:business_card/core/repositries/back_end_repo.dart';
import 'package:business_card/core/services/app_service.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MyServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
<<<<<<< HEAD
=======
    Get.put(BackEndRepo());
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
<<<<<<< HEAD
=======
  Get.put(AppService());
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
}
