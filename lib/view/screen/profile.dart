// ignore_for_file: deprecated_member_use

import 'dart:io';
import 'package:business_card/controller/home_controller.dart';
import 'package:business_card/core/services/app_service.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:business_card/controller/profile_controller.dart';
import 'package:business_card/core/constant/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:business_card/view/widget/profile/profileaboutme.dart';
import 'package:business_card/view/widget/profile/profilebottomsheetshareoption.dart';
import 'package:business_card/view/widget/profile/profilediaglogtextfield.dart';
import 'package:business_card/view/widget/profile/profiledialogbutton.dart';
import 'package:business_card/view/widget/profile/profiledisplayname.dart';
import 'package:business_card/view/widget/profile/profileimage.dart';
import 'package:business_card/view/widget/profile/profileinfodisplaysection.dart';
import 'package:business_card/view/widget/profile/profilejobtitle.dart';
import 'package:business_card/view/widget/profile/profilenormaliconbutton.dart';
import 'package:business_card/view/widget/profile/profilesoicalmediaicon.dart';

import '../../core/functions/validinput.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    ProfileControllerImp controller = Get.put(ProfileControllerImp());

    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                    decoration: BoxDecoration(color: AppColor.primaryColor),
                    width: double.infinity,
                    height: 250,
                    child: Column(
                      children: [
                        ProfileBottomSheetShareOption(
                            onPressed: () {
                              controller.shareviawallet();
                            },
                            text: "Share via Mobile Wallet",
                            icon: Icons.wallet),
                        ProfileBottomSheetShareOption(
                            onPressed: () {
                              // controller.shareviaqr();

                              Get.defaultDialog(
                                title: "Scan the QR Code",
                                titlePadding:
                                    const EdgeInsets.only(top: 25, bottom: 15),
                                titleStyle: TextStyle(
                                    fontSize: 21,
                                    color: AppColor.darkgrey,
                                    fontWeight: FontWeight.w600),
                                content: BarcodeWidget(
                                  padding: const EdgeInsets.all(15),
                                  data:
                                      "${controller.cardId}",
                                  // data: controller.dsisplayname,
                                  barcode: Barcode.qrCode(),
                                  height: 200,
                                  width: 200,
                                  color: AppColor.primaryColor,
                                ),
                                contentPadding: const EdgeInsets.all(25),
                              );
                            },
                            text: "Share via QR Code",
                            icon: Icons.qr_code),
                        ProfileBottomSheetShareOption(
                            onPressed: () {
                              Get.defaultDialog(
                                  title: "Please insert the target email",
                                  titlePadding: const EdgeInsets.only(
                                      top: 25, bottom: 20),
                                  titleStyle: TextStyle(
                                      fontSize: 19,
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.w600),
                                  content: SizedBox(
                                    width: 300,
                                    height: 200,
                                    child: Form(
                                      key: controller.formstate,
                                      child: Column(
                                        children: [
                                          ProfileDialogTextField(
                                              valid: (val) {
                                                return validInput(
                                                    val!, 8, 50, "email");
                                              },
                                              labeltext: "Email",
                                              mycontroller:
                                                  controller.targetemail,
                                              icondata: Icons.email),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          ProfileDialogbutton(
                                            text: "Share",
                                            onPressed: () {
                                              controller.shareviaemail();
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.all(30));
                            },
                            text: "Share via Email",
                            icon: Icons.email),
                        ProfileBottomSheetShareOption(
                            onPressed: () {
                              controller.sharevianfc();
                            },
                            text: "Share via NFC",
                            icon: Icons.nfc),
                      ],
                    ));
              });
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(35)),
          child: const Icon(
            Icons.share_outlined,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: ListView(
        children: [
          // Profile Container
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Stack(children: [
             SizedBox(
                 width:Get.width,
                 height: 100,
                 child:Stack(
              children:[

                Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: AppColor.primaryColor),
              ),
                Align(
                    alignment:Alignment.bottomLeft,
                    child:GestureDetector(

                      onTap: (){
                        AppService appService = Get.find<AppService>();
                        appService.deleteToken();
                      },
                      child:Container(
                        margin: EdgeInsets.only(bottom: 16,left:16),
                        child:
                        Row(
                            mainAxisSize:MainAxisSize.min,
                            children:[
                              SvgPicture.asset('assets/icons/logout.svg',color: Colors.white,width:18,height:18),
                            const SizedBox(width: 6,),
                            Text("LogOut",style:TextStyle( fontSize:16,color:Colors.white))])),
              ))])),

              Container(
                height: 100,
                margin: const EdgeInsets.only(top: 100),
                width: double.infinity,
                decoration: BoxDecoration(color: AppColor.white),
              ),
              Center(
                child: Column(children: [
                  Obx(()=>

                      ProfileImage(
                      profileimage: CachedNetworkImageProvider(controller.myCard.value.profileImage??"https://cdn-icons-png.flaticon.com/512/149/149071.png"))),
                ]),
              ),
            ]),
          ),

          // Contacts
          Container(
            color: AppColor.white,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ProfileDisplayName(displayname: controller.displayname),
                ProfileNormalIconButton(
                    icon: Icons.mode_edit_outlined,
                    iconsize: 24,
                    onPressed: () {
                      controller.editprofile();
                    })
              ]),
              const SizedBox(height: 5),
              ProfileJobTitle(text: controller.jobtitle),
              const SizedBox(height: 25),
              ProfileAboutMeSection(text: controller.about),
              const SizedBox(height: 25),
              ProfileInfoDisplaySection(
                  info: controller.email, icondata: Icons.email),
              ProfileInfoDisplaySection(
                  info: controller.address,
                  icondata: Icons.location_city_outlined),
              ProfileInfoDisplaySection(
                  info: controller.phonenumber1, icondata: Icons.phone),
              ProfileInfoDisplaySection(
                  info: controller.phonenumber2, icondata: Icons.phone),
              const SizedBox(height: 30),
              // Social media links
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: AppColor.primarytransColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ProfileSocialMediaIcon(
                        color: AppColor.black54,
                        onPressed: () {
                          // controller.info[7]
                        },
                        socialmediaicon: FontAwesomeIcons.facebook),
                    ProfileSocialMediaIcon(
                        color: AppColor.black54,
                        onPressed: () {},
                        socialmediaicon: FontAwesomeIcons.instagram),
                    ProfileSocialMediaIcon(
                        color: AppColor.black54,
                        onPressed: () {},
                        socialmediaicon: FontAwesomeIcons.linkedin),
                    ProfileSocialMediaIcon(
                        color: AppColor.black54,
                        onPressed: () {},
                        socialmediaicon: FontAwesomeIcons.github),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
