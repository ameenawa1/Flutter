<<<<<<< HEAD
import 'package:get/get.dart' hide Response, MultipartFile;
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:junior_project/core/models/user.dart';
import 'package:junior_project/core/models/verify.dart';
import 'package:junior_project/core/network/api.dart';
import 'package:junior_project/core/network/network.dart';
=======
import 'dart:developer';

import 'package:business_card/core/models/card.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response, MultipartFile;
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:business_card/core/models/user.dart';
import 'package:business_card/core/models/auth.dart';
import 'package:business_card/core/network/api.dart';
import 'package:business_card/core/network/network.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class BackEndRepo extends GetxService {
  RxBool isOnline = true.obs;
  @override
  void onInit() {
    super.onInit();
    Connectivity().onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.none) {
        isOnline(false);
      } else {
        isOnline(true);
      }
    });
  }

  Future signup(User user) async {
    return await Network.post(url: API.signup, body: user.toJson());
  }

<<<<<<< HEAD
  Future login(User user) async {
    return await Network.post(url: API.login, body: user.toJson());
  }

  Future verify(Verify verify) async {
    return await Network.post(url: API.verify, body: verify.toJson());
=======
  Future login({required String? email, required String? password}) async {
    return await Network.post(
        url: API.login, body: {"email": email, "password": password});
  }

  Future verify({required String? email, required String? code}) async {
    return await Network.post(
        url: API.verify, body: {"verification_code": code, "email": email});
  }

  Future changepassword({required String? email}) async {
    return await Network.post(url: API.forgetpassword, body: {"email": email});
  }


  Future resetpassword(
      {required String? newpass,
      required String? email,
      required String? confirmpass}) async {
    return await Network.post(url: API.resetpassword, body: {
      "email": email,
      "new_password": newpass,
      "new_password_confirmation": confirmpass
    });
  }
  Future createCard(Card card) async {
    Map<String,dynamic> json = card.toJson();
    List<MapEntry<String, MultipartFile>>? files = [];
    if(json.containsKey('profile_image')){
      files.add(MapEntry<String, MultipartFile>("profile_image", await MultipartFile.fromFile(json['profile_image'])));
      json.remove('profile_image');
    }
    return await Network.post(url: API.createCard, body:json,files: files);
  }
  Future updateCard(Card card) async {
    Map<String,dynamic> json = card.toJson();
    List<MapEntry<String, MultipartFile>>? files = [];
    if(json.containsKey('profile_image')){
      files.add(MapEntry<String, MultipartFile>("profile_image", await MultipartFile.fromFile(json['profile_image'])));
      json.remove('profile_image');
    }
    return await Network.post(url: API.updateCard, body:json,files: files);
  }
  Future addContact(int? id)async {
   return await Network.get(url: API.addContact(id));
  }
  Future getCard(int? id)async{
    return await Network.get(url: API.card(id));
  }
  Future getContacts()async{
    return await Network.get(url: API.contacts);
  }

  Future getMyCard()async{
    return  await Network.get(url: API.myCard);
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
  }
}
