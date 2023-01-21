import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/color.dart';
=======
import 'package:business_card/core/constant/color.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "Alert!",
      titleStyle:
          TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.bold),
      middleText: "Do you want to exit the application?",
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              exit(0);
            },
            child: const Text("Confirm")),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              Get.back();
            },
            child: const Text("Cancel"))
      ]);
  return Future.value(true);
}
