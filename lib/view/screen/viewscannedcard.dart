// ignore_for_file: deprecated_member_use

import 'dart:io';
<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:junior_project/controller/viewscannedcard_controller.dart';
import 'package:junior_project/core/constant/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:junior_project/core/constant/routes.dart';
import 'package:junior_project/view/widget/profile/profileaboutme.dart';
import 'package:junior_project/view/widget/profile/profiledisplayname.dart';
import 'package:junior_project/view/widget/profile/profiledisplaysectionclick.dart';
import 'package:junior_project/view/widget/profile/profileimage.dart';
import 'package:junior_project/view/widget/profile/profileinfodisplaysection.dart';
import 'package:junior_project/view/widget/profile/profilejobtitle.dart';
import 'package:junior_project/view/widget/profile/profilesoicalmediaicon.dart';
import 'package:junior_project/view/widget/contactlist/viewcardbutton.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewScannedCard extends StatelessWidget {
=======
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

>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
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
<<<<<<< HEAD
              height: MediaQuery.of(context).size.height - 270,
=======
              height: MediaQuery.of(context).size.height - 190,
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
              child: ListView(
                padding: const EdgeInsets.all(0),
                children: [
                  Container(
<<<<<<< HEAD
                      width: double.infinity,
                      color: AppColor.white,
                      child: Stack(children: [
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration:
                              BoxDecoration(color: AppColor.primaryColor),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 148),
                          child: ClipPath(
                            clipper: TriangleClipper(),
                            child: Container(
                              height: 150,
                              width: double.infinity,
                              decoration:
                                  BoxDecoration(color: AppColor.primaryColor),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: const EdgeInsets.only(top: 90),
                            child: Column(children: [
                              ProfileImage(
                                  profileimage:
                                      FileImage(File(controller.imagePath))),
                            ]),
                          ),
                        ),
                      ])),
=======
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
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
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
<<<<<<< HEAD
                                displayname: controller.displayname),
                          ]),
                      const SizedBox(height: 5),
                      ProfileJobTitle(text: controller.jobtitle),
                      const SizedBox(height: 30),
                      ProfileAboutMeSection(text: controller.about),
=======
                                displayname: controller.card.name??""),
                          ]),
                      const SizedBox(height: 5),
                      ProfileJobTitle(text: controller.card.job??""),
                      const SizedBox(height: 30),
                      ProfileAboutMeSection(text: controller.card.about??""),
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
                      const SizedBox(height: 35),
                      ProfileInfoDisplaySectionClick(
                          onTap: () {
                            controller.launchemail();
                          },
<<<<<<< HEAD
                          info: controller.email,
                          icondata: Icons.email),
                      ProfileInfoDisplaySection(
                          info: controller.address,
=======
                          info: controller.card.email??"",
                          icondata: Icons.email),
                      ProfileInfoDisplaySection(
                          info: controller.card.address??"",
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
                          icondata: Icons.location_city_outlined),
                      ProfileInfoDisplaySectionClick(
                          onTap: () {
                            controller.launchphonenumber(1);
                          },
<<<<<<< HEAD
                          info: controller.phonenumber1,
=======
                          info: controller.card.phone1??"",
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
                          icondata: Icons.phone),
                      ProfileInfoDisplaySectionClick(
                          onTap: () {
                            controller.launchphonenumber(2);
                          },
<<<<<<< HEAD
                          info: controller.phonenumber2,
=======
                          info: controller.card.phone2??"",
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
                          icondata: Icons.phone),
                    ]),
                  ),
                  const SizedBox(height: 30),

                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
<<<<<<< HEAD
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
=======
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
                    decoration: BoxDecoration(
                        color: AppColor.primarytransColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ProfileSocialMediaIcon(
<<<<<<< HEAD
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
=======
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
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
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
<<<<<<< HEAD
            height: 30,
=======
            height: 20,
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: ViewCardButton(
<<<<<<< HEAD
                onPressed: () {
                  controller.addtocontactlist();
=======
                onPressed: ()async {
                  await controller.addToContactList();
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
                },
                text: "Add to contact list",
                textcolor: AppColor.primaryColor,
                buttoncolor: AppColor.white),
<<<<<<< HEAD
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
=======
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
          )
        ],
      ),
    );
  }
}
