// ignore_for_file: deprecated_member_use

<<<<<<< HEAD
import 'package:get/get.dart';
import 'package:junior_project/core/constant/imageasset.dart';
import 'package:junior_project/core/constant/routes.dart';
import 'package:junior_project/core/services/services.dart';
=======
import 'dart:developer';

import 'package:business_card/core/models/card.dart';
import 'package:business_card/core/repositries/back_end_repo.dart';
import 'package:get/get.dart';
import 'package:business_card/core/constant/imageasset.dart';
import 'package:business_card/core/constant/routes.dart';
import 'package:business_card/core/services/services.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
import 'package:url_launcher/url_launcher.dart';

abstract class ViewScannedCardController extends GetxController {
  Future launchemail();
<<<<<<< HEAD
  addtocontactlist();
=======
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
  Future launchphonenumber(int i);
}

class ViewScannedCardControllerImp extends ViewScannedCardController {
  MyServices myServices = Get.find();
<<<<<<< HEAD

  late String imagePath;
  late int templatenumber;
=======
  Card card = Get.arguments;
  late String imagePath;
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

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
<<<<<<< HEAD

  @override
  @override
  void onInit() {
    // Edit Code Here so when to get information from database !!
    imagePath = myServices.sharedPreferences.getString("profileimagescanned") ??
        AppImageAsset.profileimage;

=======
  BackEndRepo _backEndRepo = Get.find();
  @override
  void onInit() {
    // Edit Code Here so when to get information from database !!
    imagePath =
        AppImageAsset.profileimage;
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
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

<<<<<<< HEAD
  @override
  addtocontactlist() {}
=======
  addToContactList()async {
    var response = await _backEndRepo.addContact(card.id);
    // log(response.data);
    Get.offAllNamed(AppRoute.home);
  }
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
}
