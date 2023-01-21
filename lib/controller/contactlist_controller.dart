import 'dart:async';

import 'package:get/get.dart';
import 'package:junior_project/core/constant/routes.dart';
import 'package:junior_project/core/functions/choosescannedcard.dart';
import 'package:junior_project/core/functions/dialogfunction.dart';
import 'package:junior_project/core/services/services.dart';
import 'package:nfc_in_flutter/nfc_in_flutter.dart';
import 'package:path_provider/path_provider.dart';

import '../core/functions/showerror.dart';

abstract class ContactListController extends GetxController {
  removecard(int removeThisUserIdFromFriendList);
  readcardvianfc();
  scanqrcode();
  localPath();
  gotocontactlist();
}

class ContactListControllerImp extends ContactListController {
  String? path;
  bool supportsNFC = false;
  StreamSubscription<NDEFMessage>? stream;
  MyServices myServices = Get.find();

  @override
  removecard(int removeThisUserIdFromFriendList) {}

  @override
  readcardvianfc() async {
    await NFC.isNDEFSupported.then((bool isSupported) {
      supportsNFC = isSupported;
    });
    if (supportsNFC) {
      stream = NFC
          .readNDEF(once: false, readerMode: NFCDispatchReaderMode())
          .listen((NDEFMessage message) {
        dialogFunction(() async {
          await stream?.cancel();
          stream = null;
          choosescannedcard(

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

              myServices.sharedPreferences.getInt("templatenumberscanned") ??
                  0);
        }, "View Card", "Card ID Scanned!", "Card ID: ${message.data}");
      });
    } else {
      showError("Your Device does not support NFC Services");
    }
  }

  @override
  scanqrcode() {
    Get.offAllNamed(AppRoute.scanqrcode);
  }

  @override
  localPath() async {
    final directory = await getApplicationDocumentsDirectory();
    path = directory.path;
  }

  @override
  gotocontactlist() {
    Get.offAllNamed(AppRoute.contactlist);
  }
}
