import 'package:get/get.dart' hide Response, MultipartFile;
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:junior_project/core/models/user.dart';
import 'package:junior_project/core/models/verify.dart';
import 'package:junior_project/core/network/api.dart';
import 'package:junior_project/core/network/network.dart';

class BackEndRepo extends GetxService {
  RxBool isOnline = true.obs;
  @override
  void onInit() {
    super.onInit();
    Connectivity().onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.none) {
        isOnline(false);
      } else {
        isOnline(true);
      }
    });
  }

  Future signup(User user) async {
    return await Network.post(url: API.signup, body: user.toJson());
  }

  Future login(User user) async {
    return await Network.post(url: API.login, body: user.toJson());
  }

  Future verify(Verify verify) async {
    return await Network.post(url: API.verify, body: verify.toJson());
  }
}
