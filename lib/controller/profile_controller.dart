// ignore_for_file: deprecated_member_use, unnecessary_brace_in_string_interps

<<<<<<< HEAD
import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:junior_project/core/constant/routes.dart';
import 'package:junior_project/core/functions/dialogfunction.dart';
import 'package:junior_project/core/functions/showerror.dart';
import 'package:junior_project/core/services/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:nfc_in_flutter/nfc_in_flutter.dart';
=======
import 'dart:developer';

import 'package:business_card/core/models/card.dart';
import 'package:business_card/core/repositries/back_end_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:business_card/core/constant/routes.dart';
import 'package:business_card/core/services/services.dart';
import 'package:url_launcher/url_launcher.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

abstract class ProfileController extends GetxController {
  shareviaemail();
  shareviawallet();
  sharevianfc();
  editprofile();
}

class ProfileControllerImp extends ProfileController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
<<<<<<< HEAD
  MyServices myServices = Get.find();
  TextEditingController targetemail = TextEditingController();
  bool supportsNFC = false;
  StreamSubscription<NDEFMessage>? stream;
=======
  BackEndRepo backEndRepo = Get.find<BackEndRepo>();
  MyServices myServices = Get.find();
  int cardId =-1;
  Rx<Card> myCard = Rx<Card>(Card());
  TextEditingController targetemail = TextEditingController();
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

  @override
  editprofile() {
<<<<<<< HEAD
    Get.offAllNamed(AppRoute.createcard);
=======
    Get.offAllNamed(AppRoute.createcard,arguments: {"card":myCard.value});
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
  }

  @override
  shareviaemail() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      await launch(
<<<<<<< HEAD
          'mailto:${targetemail.text}?subject=CARDHUB User Card Informatoin&body=$displayname Card Information: \n\n Name: $displayname \n Job Title: $jobtitle \n Phone Number: $phonenumber1 \n Email: $email \n Address: $address \n Facebook: $link1 \n instagram: $link2 \n Linkedin: $link3\n\n\n This message sent using CARDHUB Application. \n\n');
=======
          'mailto:${targetemail.text}?subject=CARDHUB User Card Informatoin&body= This message sent using CARDHUB Application. \n \n  $displayname Card Information: \n \n ----------------------------------------- \n Name: $displayname \n Job Title: $jobtitle \n Phone Number: $phonenumber1 \n Email: $email \n Address: $address \n  ----------------------------------------- ');
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
      Get.back(closeOverlays: true);
      targetemail.text = "";
    } else {
      printError(info: "Not Valid Input");
    }
  }

  @override
<<<<<<< HEAD
  sharevianfc() async {
    await NFC.isNDEFSupported.then((bool isSupported) {
      supportsNFC = isSupported;
    });
    if (supportsNFC) {
      int profileid = myServices.sharedPreferences.getInt("profileid") ?? -1;
      stream = NFC
          .readNDEF(once: false, readerMode: NFCDispatchReaderMode())
          .listen((NDEFMessage message) async {
        message.records.clear();
        NDEFMessage newMessage = NDEFMessage.withRecords([
          NDEFRecord.plain("$profileid"),
          NDEFRecord.text(
              "\nName: ${displayname}\nJob title: ${jobtitle}\nEmail: ${email}\nPhone: ${phonenumber1}\n",
              languageCode: "en"),
        ], id: "0");
        await message.tag.write(newMessage).onError(
          (error, stackTrace) {
            showError(error.toString());
          },
        );
        dialogFunction(() async {
          await stream?.cancel();
          stream = null;
          Get.back(closeOverlays: true);
        }, "Return", "NFC Tag Detected", "Card informations has been writen ");
      });
      // await stream?.cancel();
    } else {
      showError("Your Device does not support NFC Services");
    }
  }
=======
  sharevianfc() {}
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

  @override
  shareviawallet() {}

  @override
<<<<<<< HEAD
  void onInit() {
=======
  void onInit()async {
    log('dddddddddd');
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
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
<<<<<<< HEAD

    super.onInit();
  }
=======
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
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
}
