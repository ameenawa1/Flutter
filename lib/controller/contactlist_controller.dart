<<<<<<< HEAD
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

=======
import 'dart:developer';

import 'package:business_card/core/models/user.dart';
import 'package:business_card/core/repositries/back_end_repo.dart';
import 'package:get/get.dart';
import 'package:business_card/core/constant/routes.dart';
import 'package:business_card/core/services/services.dart';
import 'package:path_provider/path_provider.dart';

abstract class ContactListController extends GetxController {
  removecard(int removeThisUserIdFromFriendList);
  recivecardvianfc();
  scanqrcode();
  localPath();
}

class ContactListControllerImp extends ContactListController {
  MyServices myServices = Get.find();
  RxList<User> users = RxList<User>([]);
  RxBool loading = RxBool(true);
  BackEndRepo backEndRepo = Get.find<BackEndRepo>();
  String? path;
  @override
  void onInit() {
    // TODO: implement onInit
    loadCards();
    super.onInit();
  }
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
  @override
  removecard(int removeThisUserIdFromFriendList) {}

  @override
<<<<<<< HEAD
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
=======
  recivecardvianfc() {
    Get.offAllNamed(AppRoute.viewscannedcard);
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
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
<<<<<<< HEAD

  @override
  gotocontactlist() {
    Get.offAllNamed(AppRoute.contactlist);
=======
  loadCards()async{
    var response = await backEndRepo.getContacts();
    log(response.toString(),name: "llo");
    var data = response['data'];
    if(data.isNotEmpty){
      List<User>? myUsers =

      data!=null ?
      List<User>.of(response?['data'].map<User>((res)=>User.fromJson(res)))
          :[];
      users(myUsers);

    }

    // log(users.first?.card?.name.toString() ??"l",name: "f");
    loading(false);
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
  }
}
