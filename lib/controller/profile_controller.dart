// ignore_for_file: deprecated_member_use, unnecessary_brace_in_string_interps

import 'dart:developer';

import 'package:business_card/core/models/card.dart';
import 'package:business_card/core/repositries/back_end_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:business_card/core/constant/routes.dart';
import 'package:business_card/core/services/services.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class ProfileController extends GetxController {
  shareviaemail();
  shareviawallet();
  sharevianfc();
  editprofile();
}

class ProfileControllerImp extends ProfileController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  BackEndRepo backEndRepo = Get.find<BackEndRepo>();
  MyServices myServices = Get.find();
  int cardId =-1;
  Rx<Card> myCard = Rx<Card>(Card());
  TextEditingController targetemail = TextEditingController();

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

  @override
  editprofile() {
    Get.offAllNamed(AppRoute.createcard,arguments: {"card":myCard.value});
  }

  @override
  shareviaemail() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      await launch(
          'mailto:${targetemail.text}?subject=CARDHUB User Card Informatoin&body= This message sent using CARDHUB Application. \n \n  $displayname Card Information: \n \n ----------------------------------------- \n Name: $displayname \n Job Title: $jobtitle \n Phone Number: $phonenumber1 \n Email: $email \n Address: $address \n  ----------------------------------------- ');
      Get.back(closeOverlays: true);
      targetemail.text = "";
    } else {
      printError(info: "Not Valid Input");
    }
  }

  @override
  sharevianfc() {}

  @override
  shareviawallet() {}

  @override
  void onInit()async {
    log('dddddddddd');
    displayname = myServices.sharedPreferences.getString("displayname") ?? "";
    jobtitle = myServices.sharedPreferences.getString("jobtitle") ?? "";
    about = myServices.sharedPreferences.getString("about") ?? "";
    email = myServices.sharedPreferences.getString("email") ?? "";
    address = myServices.sharedPreferences.getString("address") ?? "";
    phonenumber1 = myServices.sharedPreferences.getString("phonenumber1") ?? "";
    phonenumber2 = myServices.sharedPreferences.getString("phonenumber2") ?? "";
    link1 = myServices.sharedPreferences.getString("link1") ?? "";
    link2 = myServices.sharedPreferences.getString("link2") ?? "";
    link3 = myServices.sharedPreferences.getString("link3") ?? "";
    link4 = myServices.sharedPreferences.getString("link4") ?? "";
    var response = await backEndRepo.getMyCard();
    if(response['card']==null){

    }
    Card? card = Card.fromJson(response['card']);
    myCard(card);
    cardId = card.id ?? -4;
    log(cardId.toString(),name: "card ID");
    super.onInit();
  }

  // @override
  // Future launchemail() async {
  //   await launch('mailto:$email?subject=Subject');
  // }

  // @override
  // Future launchphonenumber(int i) async {
  //   if (i == 1) {
  //     await launch('tel:$phonenumber1');
  //   } else {
  //     await launch('tel:$phonenumber2');
  //   }
  // }
}
