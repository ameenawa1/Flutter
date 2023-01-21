// ignore_for_file: deprecated_member_use

import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:business_card/controller/viewscannedcard_controller.dart';
import 'package:business_card/core/constant/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:business_card/view/widget/profile/profileaboutme.dart';
import 'package:business_card/view/widget/profile/profiledisplayname.dart';
import 'package:business_card/view/widget/profile/profiledisplaysectionclick.dart';
import 'package:business_card/view/widget/profile/profileimage.dart';
import 'package:business_card/view/widget/profile/profileinfodisplaysection.dart';
import 'package:business_card/view/widget/profile/profilejobtitle.dart';
import 'package:business_card/view/widget/profile/profilesoicalmediaicon.dart';
import 'package:business_card/view/widget/contactlist/viewcardbutton.dart';

class ViewScannedCard extends StatelessWidget {

  const ViewScannedCard({super.key});
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
              height: MediaQuery.of(context).size.height - 190,
              child: ListView(
                padding: const EdgeInsets.all(0),
                children: [
                  Container(
                    width: double.infinity,
                    color: AppColor.primaryColor,
                    child: Stack(children: [
                      Container(
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(color: AppColor.primaryColor),
                      ),
                      Container(
                        height: 120,
                        margin: const EdgeInsets.only(top: 120),
                        width: double.infinity,
                        decoration: BoxDecoration(color: AppColor.white),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Center(
                          child: Column(children: [
                            ProfileImage(
                                profileimage:CachedNetworkImageProvider(controller.card.profileImage??"")),
                          ]),
                        ),
                      ),
                    ]),
                  ),
                  // profileimage: FileImage(File(controller.imagePath))),

                  // Contacts
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ProfileDisplayName(
                                displayname: controller.card.name??""),
                          ]),
                      const SizedBox(height: 5),
                      ProfileJobTitle(text: controller.card.job??""),
                      const SizedBox(height: 30),
                      ProfileAboutMeSection(text: controller.card.about??""),
                      const SizedBox(height: 35),
                      ProfileInfoDisplaySectionClick(
                          onTap: () {
                            controller.launchemail();
                          },
                          info: controller.card.email??"",
                          icondata: Icons.email),
                      ProfileInfoDisplaySection(
                          info: controller.card.address??"",
                          icondata: Icons.location_city_outlined),
                      ProfileInfoDisplaySectionClick(
                          onTap: () {
                            controller.launchphonenumber(1);
                          },
                          info: controller.card.phone1??"",
                          icondata: Icons.phone),
                      ProfileInfoDisplaySectionClick(
                          onTap: () {
                            controller.launchphonenumber(2);
                          },
                          info: controller.card.phone2??"",
                          icondata: Icons.phone),
                    ]),
                  ),
                  const SizedBox(height: 30),

                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: AppColor.primarytransColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ProfileSocialMediaIcon(
                            onPressed: () {
                              // controller.info[7]
                            },
                            socialmediaicon: FontAwesomeIcons.facebook),
                        ProfileSocialMediaIcon(
                            onPressed: () {},
                            socialmediaicon: FontAwesomeIcons.instagram),
                        ProfileSocialMediaIcon(
                            onPressed: () {},
                            socialmediaicon: FontAwesomeIcons.linkedin),
                        ProfileSocialMediaIcon(
                            onPressed: () {},
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
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: ViewCardButton(
                onPressed: ()async {
                  await controller.addToContactList();
                },
                text: "Add to contact list",
                textcolor: AppColor.primaryColor,
                buttoncolor: AppColor.white),
          )
        ],
      ),
    );
  }
}
