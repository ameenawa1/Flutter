import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:junior_project/core/functions/choosetemplate.dart';
import 'package:junior_project/core/services/services.dart';
import 'package:junior_project/view/screen/contactlist.dart';
import 'package:junior_project/view/screen/profile.dart';
=======
import 'package:business_card/view/screen/auth/contactlist.dart';
import 'package:business_card/view/screen/profile.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

abstract class HomeController extends GetxController {
  changepage(int index);
}

class HomeControllerImp extends HomeController {
<<<<<<< HEAD
  MyServices myServices = Get.find();
  int currentpage = 0;
  late int templatenumber;
  late List<Widget> pages;
=======
  int currentpage = 0;

  List<Widget> pages = [const ProfilePage(), const ContactList()];
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

  @override
  changepage(int index) {
    currentpage = index;
    update();
  }
<<<<<<< HEAD

  @override
  void onInit() {
    templatenumber = myServices.sharedPreferences.getInt("templatenumber") ?? 0;
    pages = [
      chooseTemplate(templatenumber) ?? const ProfilePage(),
      const ContactList()
    ];
    super.onInit();
  }
=======
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
}
