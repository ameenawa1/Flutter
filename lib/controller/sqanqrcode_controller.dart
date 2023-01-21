// ignore_for_file: unused_element

<<<<<<< HEAD
import 'package:get/get.dart';
import 'package:junior_project/core/constant/routes.dart';
import 'package:junior_project/core/functions/choosescannedcard.dart';
import 'package:junior_project/core/services/services.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

abstract class ScanQrCodController extends GetxController {
  // void screenwasclosed();
  viewscannedcard();
  goback();
=======
import 'dart:developer';

import 'package:business_card/core/models/card.dart';
import 'package:business_card/core/models/user.dart';
import 'package:business_card/core/network/api.dart';
import 'package:business_card/core/repositries/back_end_repo.dart';
import 'package:business_card/routes.dart';
import 'package:get/get.dart';
import 'package:business_card/core/constant/routes.dart';
import 'package:business_card/core/services/services.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

abstract class ScanQrCodController extends GetxController {
  void screenwasclosed();
  viewscannedcard();
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
}

class ScanQrCodControllerImp extends ScanQrCodController {
  MobileScannerController cameraController = MobileScannerController();
<<<<<<< HEAD
=======
  BackEndRepo _backEndRepo = Get.find();
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
  bool screenopend = false;
  String? scannedIdByQR;
  MyServices myServices = Get.find();

<<<<<<< HEAD
  // @override
  // screenwasclosed() {
  //   screenopend = false;
  // }

  @override
  viewscannedcard() {
    myServices.sharedPreferences.setString("scannedIdByQR", scannedIdByQR!);
=======
  @override
  screenwasclosed() {
    screenopend = false;
  }

  @override
  viewscannedcard() {
    // myServices.sharedPreferences.setString("scannedIdByQR", scannedIdByQR!);
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
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
<<<<<<< HEAD
    screenopend = false;

    choosescannedcard(
        myServices.sharedPreferences.getInt("templatenumberscanned") ?? 0);
  }

  @override
  goback() {
    Get.offAllNamed(AppRoute.home);
=======
    // screenopend = false;
    // Get.offAndToNamed(AppRoute.viewscannedcard);
  }
  getContact(String? data)async{
    if(data != null){
      var response = await _backEndRepo.getCard(int.parse(data));
      log(response.toString());
      Card card = Card.fromJson(response['card']);
      log(card.job.toString(),name:"card");

      Get.toNamed(AppRoute.viewscannedcard,arguments: card);
    }
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
  }
}
