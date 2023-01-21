import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:business_card/view/screen/auth/contactlist.dart';
import 'package:business_card/view/screen/profile.dart';

abstract class HomeController extends GetxController {
  changepage(int index);
}

class HomeControllerImp extends HomeController {
  int currentpage = 0;

  List<Widget> pages = [const ProfilePage(), const ContactList()];

  @override
  changepage(int index) {
    currentpage = index;
    update();
  }
}
