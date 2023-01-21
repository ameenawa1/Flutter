// import 'package:contacts_service/contacts_service.dart';
import 'package:business_card/core/models/user.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:business_card/controller/contactlist_controller.dart';
import 'package:business_card/core/constant/color.dart';
import 'package:business_card/data/datasource/static/static.dart';
import 'package:business_card/view/widget/contactlist/contactlistminicard.dart';
import 'package:business_card/view/widget/contactlist/viewcard.dart';
import 'package:path_provider/path_provider.dart';
import '../../widget/contactlist/contactlistbottmsheetoption.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});
  @override
  Widget build(BuildContext context) {
    ContactListControllerImp controller = Get.put(ContactListControllerImp());

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
                    height: 130,
                    child: Column(
                      children: [
                        ContactListBottomSheetOption(
                            onPressed: () {
                              controller.scanqrcode();
                            },
                            text: "Scan QR Code",
                            icon: Icons.qr_code_scanner),
                        ContactListBottomSheetOption(
                            onPressed: () {
                              controller.recivecardvianfc();
                            },
                            text: "Recive Card via NFC",
                            icon: Icons.nfc_outlined),
                      ],
                    ));
              });
          // profileimage: FileImage(File(controller.imagePath))),
//
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(35)),
          child: const Icon(
            Icons.person_add,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          const SizedBox(height: 40),
          Center(
            child: Text(
              "Contact List",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: AppColor.white,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child:
              Obx(()=>controller.loading.value ?
              const Center(child:CircularProgressIndicator()):
              ListView.builder(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 0, left: 0, right: 0),
                shrinkWrap: true,
                itemCount: controller.users.value.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (((context, index) {
                  User user = controller.users.value[index];
                  return ContactListMiniCard(
                    view: () {
                      showModalBottomSheet(
                          elevation: 0,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return SizedBox(
                              height: 750,
                              width: double.infinity,
                              child: ViewCard(
                                profileimage:
                                   CachedNetworkImageProvider(user?.card?.profileImage??""),
                                displayname:
                                    user?.card?.name??"",
                                jobtitle: user?.card?.job??"",
                                about: user?.card?.about??"",
                                email: user?.email??"",
                                address: user?.card?.address??"",
                                phonenumber1:
                                user?.card?.phone1??"",
                                phonenumber2:
                                user?.card?.phone2??"",
                                link1: user?.card?.facebook??"",
                                link2: user?.card?.instgram??"",
                                link3: user?.card?.linkedin??"",
                                link4: user?.card?.github??"",
                              ),
                            );
                          });
                    },
                    save: () async {
                      // Contact contact = Contact(
                      //     displayName: testingdatalist[index].displayname!,
                      //     jobTitle: testingdatalist[index].jobtitle!,
                      //     emails: [
                      //       testingdatalist[index].email! as Item
                      //     ],
                      //     phones: [
                      //       testingdatalist[index].phonenumber1! as Item,
                      //     ]);
                      // print(contact.displayName);
                      // ContactsService.addContact(contact);

                      // var vCard = VCard();
                      // vCard.firstName = testingdatalist[index].displayname!;
                      // vCard.jobTitle = testingdatalist[index].jobtitle!;
                      // vCard.workPhone = testingdatalist[index].phonenumber1!;
                      // vCard.note = testingdatalist[index].about!;
                      // vCard.email = testingdatalist[index].email!;
                      // final directory =
                      //     await getApplicationDocumentsDirectory();
                      // final String path = directory.path;
                      // printInfo(info: path);
                      // vCard.saveToFile('$path/Contacts.vcf');
                    },
                    remove: () {
                      controller.removecard(testingdatalist[index].userid!);
                    },
                    profileimage: user.card?.profileImage??"",
                    displayname: user.firstName??"",
                    jobtitle: user.card?.job??"",
                    about: user.card?.about??"",
                    email: user.email??"",
                    address: user.card?.address??"",
                    phonenumber1: user.card?.phone1??"",
                    phonenumber2:user.card?.phone2 ??"",
                    link1: user.card?.facebook??"",
                    link2:user.card?.facebook??"",
                    link3: user.card?.facebook??"",
                    link4: user.card?.facebook??"",
                  );
                })),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
// showModalBottomSheet(
//     isScrollControlled: true,
//     context: context,
//     builder: (context) {
//       return Container(
//           // Check user template so we can choose viewcard1,viewcard2,...
//           height: 700,
//           child: const ViewCard());
//     });
