// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_print, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:junior_project/controller/welcome_controller.dart';
import 'package:junior_project/core/constant/color.dart';
import 'package:junior_project/view/widget/welcome/welcomeimage.dart';
import 'package:junior_project/view/widget/welcome/welcomeintro.dart';
import 'package:junior_project/view/widget/welcome/welcomeloginbutton.dart';
import 'package:junior_project/view/widget/welcome/welcomesignupbutton.dart';
=======
import 'package:business_card/controller/welcome_controller.dart';
import 'package:business_card/core/constant/color.dart';
import 'package:business_card/view/widget/welcome/welcomeimage.dart';
import 'package:business_card/view/widget/welcome/welcomeintro.dart';
import 'package:business_card/view/widget/welcome/welcomeloginbutton.dart';
import 'package:business_card/view/widget/welcome/welcomesignupbutton.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(WelcomeControllerImp());
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
          child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: AppColor.white, borderRadius: BorderRadius.circular(30)),
          padding: EdgeInsets.only(left: 40, right: 40, top: 10),
          width: MediaQuery.of(context).size.width - 50,
          height: MediaQuery.of(context).size.height - 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              WelcomeIntro(),
              WelcomeImage(),
              Column(children: [
                WelcomeLoginButton(),
                SizedBox(
                  height: 20,
                ),
                WelcomeSignupButton(),
              ]),
            ],
          ),
        ),
      )),
    );
  }
}
