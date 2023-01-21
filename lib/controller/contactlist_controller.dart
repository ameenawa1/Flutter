import 'dart:developer';

import 'package:business_card/core/models/user.dart';
import 'package:business_card/core/repositries/back_end_repo.dart';
import 'package:get/get.dart';
import 'package:business_card/core/constant/routes.dart';
import 'package:business_card/core/services/services.dart';
import 'package:path_provider/path_provider.dart';

abstract class ContactListController extends GetxController {
  removecard(int removeThisUserIdFromFriendList);
  recivecardvianfc();
  scanqrcode();
  localPath();
}

class ContactListControllerImp extends ContactListController {
  MyServices myServices = Get.find();
  RxList<User> users = RxList<User>([]);
  RxBool loading = RxBool(true);
  BackEndRepo backEndRepo = Get.find<BackEndRepo>();
  String? path;
  @override
  void onInit() {
    // TODO: implement onInit
    loadCards();
    super.onInit();
  }
  @override
  removecard(int removeThisUserIdFromFriendList) {}

  @override
  recivecardvianfc() {
    Get.offAllNamed(AppRoute.viewscannedcard);
  }

  @override
  scanqrcode() {
    Get.offAllNamed(AppRoute.scanqrcode);
  }

  @override
  localPath() async {
    final directory = await getApplicationDocumentsDirectory();
    path = directory.path;
  }
  loadCards()async{
    var response = await backEndRepo.getContacts();
    log(response.toString(),name: "llo");
    var data = response['data'];
    if(data.isNotEmpty){
      List<User>? myUsers =

      data!=null ?
      List<User>.of(response?['data'].map<User>((res)=>User.fromJson(res)))
          :[];
      users(myUsers);

    }

    // log(users.first?.card?.name.toString() ??"l",name: "f");
    loading(false);
  }
}
