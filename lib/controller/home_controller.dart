import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:junior_project/core/functions/choosetemplate.dart';
import 'package:junior_project/core/services/services.dart';
import 'package:junior_project/view/screen/contactlist.dart';
import 'package:junior_project/view/screen/profile.dart';

abstract class HomeController extends GetxController {
  changepage(int index);
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();
  int currentpage = 0;
  late int templatenumber;
  late List<Widget> pages;

  @override
  changepage(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    templatenumber = myServices.sharedPreferences.getInt("templatenumber") ?? 0;
    pages = [
      chooseTemplate(templatenumber) ?? const ProfilePage(),
      const ContactList()
    ];
    super.onInit();
  }
}
