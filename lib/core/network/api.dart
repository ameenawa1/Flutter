<<<<<<< HEAD
abstract class API {
  static String baseUrl = "http://192.168.43.101:8000/api/";

  //=========== Auth ============
  static String signup = "register";

  static String login = "login";
  static String verify = "verify";
}
=======
import 'dart:developer';


import 'package:dio/dio.dart';

abstract class API {
  static String baseUrl = "http://192.168.1.8:8000/api/";

  //=========== Auth ============
  static String signup ="register";

  static String login = "login";
  static String verify = "verify";
  static String forgetpassword ="reset-password";
  static String resetpassword ="change-password";
  static String createCard ="createcard";
  static String updateCard ="update_card";
  static  addContact(int? id)=> "add_contact/$id";
  static card(int? id) => "card/$id";
  static String contacts ="contacts";
  static String myCard ="card";

}
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
