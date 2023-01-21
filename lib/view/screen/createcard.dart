// ignore_for_file: unnecessary_cast, unnecessary_null_comparison

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:junior_project/controller/createcard_controller.dart';
import 'package:junior_project/core/constant/color.dart';
import 'package:junior_project/core/constant/imageasset.dart';
import 'package:junior_project/core/functions/validinput.dart';
import 'package:junior_project/data/datasource/static/static.dart';
import 'package:junior_project/view/widget/createcard/createcardbottomsheet.dart';
import 'package:junior_project/view/widget/createcard/createcardbutton.dart';
import 'package:junior_project/view/widget/createcard/createcardcolor.dart';
import 'package:junior_project/view/widget/createcard/createcardtextfield.dart';
import 'package:junior_project/view/widget/createcard/createcardtextfieldlink.dart';
import 'package:junior_project/view/widget/createcard/createcardtextheader.dart';
import 'package:junior_project/view/widget/createcard/createcardtitle.dart';
import 'package:junior_project/view/widget/createcard/uploadimage.dart';

class CreateCard extends StatelessWidget {
  const CreateCard({super.key});
  @override
  Widget build(BuildContext context) {
    CreateCardContollerImp controller = Get.put(CreateCardContollerImp());
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55.0), // here the desired height
          child: AppBar(
            elevation: 0,
            backgroundColor: AppColor.primaryColor,
            title: const CreateCardTextHeader(text: "Personal Card"),
          )),
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColor.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                // ignore: sized_box_for_whitespace
                child: Form(
                  key: controller.formstate,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 30),
                    // margin: const EdgeInsets.only(bottom: 50),
                    // width: MediaQuery.of(context).size.width - 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const CreateCardTitle(text: "Profile Info"),
                        Column(
                          children: <Widget>[
                            GetBuilder<CreateCardContollerImp>(
                              builder: (controller) => UploadImage(
                                ontap: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (context) {
                                        return CreateCardBottomSheet(
                                            uploadImageGallery: () {
                                          controller.uploadImageGallery();
                                        }, uploadImageCamera: () {
                                          controller.uploadImageCamera();
                                        });
                                      });
                                },
                                image: controller.image == null
                                    ? (controller.myServices.sharedPreferences
                                                .getString("profileimage") ==
                                            null
                                        ? const AssetImage(
                                                AppImageAsset.profileimage)
                                            as ImageProvider
                                        : FileImage(File(controller
                                                .myServices.sharedPreferences
                                                .getString("profileimage")
                                            as String)))
                                    : FileImage(controller.image as File)
                                        as ImageProvider,
                              ),
                            ),
                            const SizedBox(
                              height: 45,
                            ),
                            CreateCardTextField(
                                valid: (val) {
                                  return validInput(val!, 4, 15, "displayname");
                                },
                                mycontroller: controller.displayname,
                                labeltext: "Display name",
                                icondata: Icons.person),
                            CreateCardTextField(
                                valid: (val) {
                                  return validInput(val!, 5, 20, "jobtitle");
                                },
                                mycontroller: controller.jobtitle,
                                labeltext: "Job title",
                                icondata: Icons.work_outline_rounded),
                            CreateCardTextField(
                              valid: (val) {
                                return validInput(val!, 10, 350, "about");
                              },
                              mycontroller: controller.about,
                              labeltext: "About",
                              icondata: Icons.info_outline_rounded,
                            ),
                            CreateCardTextField(
                                valid: (val) {
                                  return validInput(val!, 8, 50, "email");
                                },
                                mycontroller: controller.email,
                                labeltext: "Email",
                                icondata: Icons.email),
                            CreateCardTextField(
                                valid: (val) {
                                  return validInput(val!, 8, 30, "address");
                                },
                                mycontroller: controller.address,
                                labeltext: "Address",
                                icondata: Icons.location_on_rounded),
                          ],
                        ),
                        const CreateCardTitle(text: "Phone Numbers"),
                        Column(children: [
                          CreateCardTextField(
                            isNumber: true,
                            valid: (val) {
                              return validInput(val!, 10, 25, "phone");
                            },
                            mycontroller: controller.phonenumber1,
                            labeltext: "Phone number 1:",
                            icondata: Icons.phone_android,
                          ),
                          CreateCardTextField(
                            isNumber: true,
                            valid: (val) {
                              return validInput(val!, 10, 25, "phone");
                            },
                            mycontroller: controller.phonenumber2,
                            labeltext: "Phone number 2:",
                            icondata: Icons.phone_android,
                          ),
                        ]),
                        const CreateCardTitle(text: "Social Media Links"),
                        Column(children: [
                          CreateCardTextFieldLink(
                            prefixtext: "https://",
                            valid: (val) {
                              return validInput(val!, 10, 40, "link");
                            },
                            mycontroller: controller.facebook,
                            labeltext: "Facebook:",
                            icondata: Icons.link,
                          ),
                          CreateCardTextFieldLink(
                            prefixtext: "https://",
                            valid: (val) {
                              return validInput(val!, 10, 40, "link");
                            },
                            mycontroller: controller.instagram,
                            labeltext: "Instagram",
                            icondata: Icons.link,
                          ),
                          CreateCardTextFieldLink(
                            prefixtext: "https://",
                            valid: (val) {
                              return validInput(val!, 10, 40, "link");
                            },
                            mycontroller: controller.linkedin,
                            labeltext: "Linkedin",
                            icondata: Icons.link,
                          ),
                          CreateCardTextFieldLink(
                            prefixtext: "https://",
                            valid: (val) {
                              return validInput(val!, 10, 40, "link");
                            },
                            mycontroller: controller.github,
                            labeltext: "Github",
                            icondata: Icons.link,
                          ),
                        ]),
                        const CreateCardTitle(text: "App Color"),
                        GetBuilder<CreateCardContollerImp>(
                          builder: (controller) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CreateCardColor(
                                  colorid: 0,
                                  onTap: () {
                                    controller.changeappcolor(0);
                                  },
                                  color:
                                      const Color.fromARGB(255, 150, 202, 255)),
                              CreateCardColor(
                                  colorid: 1,
                                  onTap: () {
                                    controller.changeappcolor(1);
                                  },
                                  color:
                                      const Color.fromARGB(255, 255, 150, 150)),
                              CreateCardColor(
                                  colorid: 2,
                                  onTap: () {
                                    controller.changeappcolor(2);
                                  },
                                  color:
                                      const Color.fromARGB(255, 202, 150, 255)),
                              CreateCardColor(
                                  colorid: 3,
                                  onTap: () {
                                    controller.changeappcolor(3);
                                  },
                                  color:
                                      const Color.fromARGB(255, 109, 186, 151)),

                              // CreateCardColor(),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CreateCardButton(
                          textcolor: AppColor.primaryColor,
                          buttoncolor: const Color.fromARGB(255, 212, 212, 212),
                          text: "Change Template",
                          onPressed: () {
                            Get.defaultDialog(
                                title: "Choose a template",
                                titlePadding:
                                    const EdgeInsets.only(top: 25, bottom: 10),
                                titleStyle: TextStyle(
                                    fontSize: 24,
                                    color: AppColor.primaryColor,
                                    fontWeight: FontWeight.w500),
                                content: SizedBox(
                                  height: 400,
                                  width: 400,
                                  child: ListView.builder(
                                      itemCount: 4,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: ((context, index) {
                                        return InkWell(
                                          onTap: () {
                                            controller.updatetemplate(index);
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                            height: 350,
                                            width: 260,
                                            child: Image.asset(
                                                templatelist[index].image!),
                                          ),
                                        );
                                      })),
                                ),
                                contentPadding: const EdgeInsets.all(10));
                          },
                        ),
                        CreateCardButton(
                            textcolor: AppColor.white,
                            buttoncolor: AppColor.primaryColor,
                            text: "Save Information",
                            onPressed: () {
                              controller.createcard();
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
