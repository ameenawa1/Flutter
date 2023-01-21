// ignore_for_file: deprecated_member_use

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:junior_project/controller/viewscannedcard_controller.dart';
import 'package:junior_project/core/constant/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:junior_project/view/widget/profile/profiledisplaysectionclick.dart';
import 'package:junior_project/view/widget/profile/profileimage.dart';
import 'package:junior_project/view/widget/profile/profileinfodisplaysection.dart';
import 'package:junior_project/view/widget/profile/profilesoicalmediaicon.dart';
import 'package:junior_project/view/widget/contactlist/viewcardbutton.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constant/routes.dart';
import '../widget/profile1/profile1displayname.dart';
import '../widget/profile1/profile1jobtitle.dart';
import '../widget/profile2/profile2aboutme.dart';

class ViewScannedCard3 extends StatelessWidget {
  const ViewScannedCard3({super.key});
  @override
  Widget build(BuildContext context) {
    ViewScannedCardControllerImp controller =
        Get.put(ViewScannedCardControllerImp());

    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(15)),
              width: MediaQuery.of(context).size.width - 30,
              height: MediaQuery.of(context).size.height - 270,
              child: ListView(
                padding: const EdgeInsets.all(0),
                children: [
                  Container(
                    width: double.infinity,
                    color: AppColor.white,
                    child: Stack(children: [
                      Container(
                        margin: const EdgeInsets.only(top: 160),
                        child: Center(
                          child: Container(
                            height: 240,
                            width: 320,
                            decoration: BoxDecoration(
                                color: AppColor.primaryColor,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 50),
                                  child: Center(
                                    child: Profile1DisplayName(
                                        displayname: controller.displayname),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Profile1JobTitle(text: controller.jobtitle),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 50),
                          child: ProfileImage(
                            profileimage: FileImage(File(controller.imagePath)),
                          ),
                        ),
                      )
                    ]),
                  ),
                  // profileimage: FileImage(File(controller.imagePath))),

                  // Contacts
                  Container(
                    color: AppColor.white,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(children: [
                      const SizedBox(height: 10),
                      Profile2AboutMeSection(text: controller.about),
                      const SizedBox(height: 40),
                      ProfileInfoDisplaySectionClick(
                          onTap: () {
                            controller.launchemail();
                          },
                          info: controller.email,
                          icondata: Icons.email),
                      ProfileInfoDisplaySection(
                          info: controller.address,
                          icondata: Icons.location_city_outlined),
                      ProfileInfoDisplaySectionClick(
                          onTap: () {
                            controller.launchphonenumber(1);
                          },
                          info: controller.phonenumber1,
                          icondata: Icons.phone),
                      ProfileInfoDisplaySectionClick(
                          onTap: () {
                            controller.launchphonenumber(2);
                          },
                          info: controller.phonenumber2,
                          icondata: Icons.phone),
                    ]),
                  ),
                  const SizedBox(height: 40),

                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                    decoration: BoxDecoration(
                        color: AppColor.primarytransColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ProfileSocialMediaIcon(
                            color: AppColor.black54,
                            onPressed: () async {
                              // ignore: prefer_interpolation_to_compose_strings
                              var url = controller.link1;
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            socialmediaicon: FontAwesomeIcons.facebook),
                        ProfileSocialMediaIcon(
                            color: AppColor.black54,
                            onPressed: () async {
                              // ignore: prefer_interpolation_to_compose_strings
                              var url = controller.link2;
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            socialmediaicon: FontAwesomeIcons.instagram),
                        ProfileSocialMediaIcon(
                            color: AppColor.black54,
                            onPressed: () async {
                              // ignore: prefer_interpolation_to_compose_strings
                              var url = controller.link3;
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            socialmediaicon: FontAwesomeIcons.linkedin),
                        ProfileSocialMediaIcon(
                            color: AppColor.black54,
                            onPressed: () async {
                              // ignore: prefer_interpolation_to_compose_strings
                              var url = controller.link4;
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            socialmediaicon: FontAwesomeIcons.github),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: ViewCardButton(
                onPressed: () {
                  controller.addtocontactlist();
                },
                text: "Add to contact list",
                textcolor: AppColor.primaryColor,
                buttoncolor: AppColor.white),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: ViewCardButton(
                onPressed: () {
                  Get.offAllNamed(AppRoute.home);
                },
                text: "Dissmis",
                textcolor: AppColor.primaryColor,
                buttoncolor: const Color.fromARGB(255, 85, 74, 73)),
          )
        ],
      ),
    );
  }
}
