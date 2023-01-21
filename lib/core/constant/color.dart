import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:business_card/core/services/services.dart';

MyServices myServices = Get.find();

class AppColor {
  static Color grey = const Color.fromARGB(255, 142, 137, 137);
  static Color primaryColor = const Color.fromARGB(255, 148, 151, 223);
  static Color white = Colors.white;
  static Color darkgrey = const Color.fromARGB(221, 55, 55, 55);
  static Color textfieldprimary = const Color.fromARGB(31, 151, 145, 181);
  static Color primarytransColor = const Color.fromARGB(132, 165, 161, 230);
  static Color minicardbg = const Color.fromARGB(57, 153, 148, 179);
  static Color black54 = Colors.black54;

  static changecolor() {
    if (myServices.sharedPreferences.getInt("templatenumber") == 0) {
      primaryColor = const Color.fromARGB(255, 148, 151, 223);
      textfieldprimary = const Color.fromARGB(31, 151, 145, 181);
      primarytransColor = const Color.fromARGB(132, 165, 161, 230);
      minicardbg = const Color.fromARGB(57, 153, 148, 179);
    }
    if (myServices.sharedPreferences.getInt("templatenumber") == 1) {
      primaryColor = const Color.fromARGB(255, 159, 211, 212);
      textfieldprimary = const Color.fromARGB(34, 148, 208, 212);
      primarytransColor = const Color.fromARGB(198, 148, 212, 210);
      minicardbg = const Color.fromARGB(61, 148, 212, 199);
    }
  }
}
