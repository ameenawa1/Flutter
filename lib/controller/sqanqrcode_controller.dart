// ignore_for_file: unused_element

import 'package:get/get.dart';
import 'package:junior_project/core/constant/routes.dart';
import 'package:junior_project/core/functions/choosescannedcard.dart';
import 'package:junior_project/core/services/services.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

abstract class ScanQrCodController extends GetxController {
  // void screenwasclosed();
  viewscannedcard();
  goback();
}

class ScanQrCodControllerImp extends ScanQrCodController {
  MobileScannerController cameraController = MobileScannerController();
  bool screenopend = false;
  String? scannedIdByQR;
  MyServices myServices = Get.find();

  // @override
  // screenwasclosed() {
  //   screenopend = false;
  // }

  @override
  viewscannedcard() {
    myServices.sharedPreferences.setString("scannedIdByQR", scannedIdByQR!);
    // GET DATA OF THIS ID AND ASSING IT

    //    // Send scannedIdByQR code to Api and recive card infromation
    // // save information locally on :
    // myServices.sharedPreferences.setInt("templatenumberscanned", -100);
    // myServices.sharedPreferences
    //     .setString("profileimagescanned", AppImageAsset.profileimage);
    // myServices.sharedPreferences.setString("displaynamescanned", "");
    // myServices.sharedPreferences.setString("jobtitlescanned", "");
    // myServices.sharedPreferences.setString("aboutscanned", "");
    // myServices.sharedPreferences.setString("emailscanned", "");
    // myServices.sharedPreferences.setString("addressscanned", "");
    // myServices.sharedPreferences.setString("phonenumber1scanned", "");
    // myServices.sharedPreferences.setString("phonenumber2scanned", "");
    // myServices.sharedPreferences.setString("link1scanned", "");
    // myServices.sharedPreferences.setString("link2scanned", "");
    // myServices.sharedPreferences.setString("link3scanned", "");
    // myServices.sharedPreferences.setString("link4scanned", "");
    screenopend = false;

    choosescannedcard(
        myServices.sharedPreferences.getInt("templatenumberscanned") ?? 0);
  }

  @override
  goback() {
    Get.offAllNamed(AppRoute.home);
  }
}
