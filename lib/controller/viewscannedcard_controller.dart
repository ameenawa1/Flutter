// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:business_card/core/models/card.dart';
import 'package:business_card/core/repositries/back_end_repo.dart';
import 'package:get/get.dart';
import 'package:business_card/core/constant/imageasset.dart';
import 'package:business_card/core/constant/routes.dart';
import 'package:business_card/core/services/services.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class ViewScannedCardController extends GetxController {
  Future launchemail();
  Future launchphonenumber(int i);
}

class ViewScannedCardControllerImp extends ViewScannedCardController {
  MyServices myServices = Get.find();
  Card card = Get.arguments;
  late String imagePath;

  late String displayname;
  late String jobtitle;
  late String about;
  late String email;
  late String address;

// Phone Numbers
  late String phonenumber1;
  late String phonenumber2;

// Social Media Links
  late String link1;
  late String link2;
  late String link3;
  late String link4;
  BackEndRepo _backEndRepo = Get.find();
  @override
  void onInit() {
    // Edit Code Here so when to get information from database !!
    imagePath =
        AppImageAsset.profileimage;
    displayname =
        myServices.sharedPreferences.getString("displaynamescanned") ?? "";
    jobtitle = myServices.sharedPreferences.getString("jobtitlescanned") ?? "";
    about = myServices.sharedPreferences.getString("aboutscanned") ?? "";
    email = myServices.sharedPreferences.getString("emailscanned") ?? "";
    address = myServices.sharedPreferences.getString("addressscanned") ?? "";
    phonenumber1 =
        myServices.sharedPreferences.getString("phonenumber1scanned") ?? "";
    phonenumber2 =
        myServices.sharedPreferences.getString("phonenumber2scanned") ?? "";
    link1 = myServices.sharedPreferences.getString("link1scanned") ?? "";
    link2 = myServices.sharedPreferences.getString("link2scanned") ?? "";
    link3 = myServices.sharedPreferences.getString("link3scanned") ?? "";
    link4 = myServices.sharedPreferences.getString("link4scanned") ?? "";

    super.onInit();
  }

  @override
  Future launchemail() async {
    await launch('mailto:$email?subject=Subject');
  }

  @override
  Future launchphonenumber(int i) async {
    if (i == 1) {
      await launch('tel:$phonenumber1');
    } else {
      await launch('tel:$phonenumber2');
    }
  }

  addToContactList()async {
    var response = await _backEndRepo.addContact(card.id);
    // log(response.data);
    Get.offAllNamed(AppRoute.home);
  }
}
