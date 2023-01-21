// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_print, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:junior_project/controller/auth/verifycodesignup_controller.dart';
import 'package:junior_project/core/constant/color.dart';
import 'package:junior_project/view/widget/auth/authtextheader.dart';

class VerifyCodeSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColor.primaryColor,
        body: GetBuilder<VerifyCodeSignUpControllerImp>(
          builder: (controller) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 100, bottom: 20),
                child: const AuthTextHeader(
                  text: "Confirm Code",
                ),
              ),
              Container(
                height: 350,
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.white),
                child: Column(children: [
                  Text(
                    "Enter the verifcation code we sent to your email.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 21,
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 60),
                    child: OtpTextField(
                      fieldWidth: 50,
                      filled: true,
                      fillColor: AppColor.textfieldprimary,
                      numberOfFields: 5,
                      borderColor: AppColor.primaryColor,
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        controller.goToSuccessSignUp(verificationCode);
                      }, // end onSubmit
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
