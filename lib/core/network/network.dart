<<<<<<< HEAD
// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_typing_uninitialized_variables, no_leading_underscores_for_local_identifiers

=======
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
import 'dart:developer' as developer;
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide FormData, MultipartFile;
<<<<<<< HEAD
import 'package:junior_project/core/network/api.dart';
=======
import 'package:business_card/core/network/api.dart';
import 'package:business_card/core/services/app_service.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

import '../repositries/back_end_repo.dart';

class Network {
  static final BackEndRepo _backEndRepo = Get.find<BackEndRepo>();
<<<<<<< HEAD
=======
  static final AppService _appService = Get.find<AppService>();
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
  static Future _performRequest(
    RequestOptions options,
  ) async {
    final _watch = Stopwatch();
    Dio client = Dio(
      BaseOptions(sendTimeout: 80000, connectTimeout: 80000),
    );

    developer.log('${options.method.toUpperCase()} ${options.uri}',
        name: 'NETWORK');
    _watch.reset();
    var dioResponse;
    try {
      _watch.start();
      developer.log(options.baseUrl + options.path);
      dioResponse = await client.request(
        options.baseUrl + options.path,
        data: options.data,
        options: Options(method: options.method, headers: options.headers),
        queryParameters: options.queryParameters,
        cancelToken: options.cancelToken,
        onSendProgress: options.onSendProgress,
        onReceiveProgress: options.onReceiveProgress,
      );
      developer.log(dioResponse.toString(), name: 'NETWORK');
      _watch.stop();
      developer.log(
          'OK successful HTTP request in ${_watch.elapsedMilliseconds}ms',
          name: 'NETWORK');
      _backEndRepo.isOnline(true);
    } on DioError catch (ex) {
      developer.log(
          'DIO : ' +
              ex.response.toString() +
              '\n' +
              'Error : ' +
              ex.toString() +
              '\n' +
              'Status Code : ' +
              (ex.response?.statusCode.toString() ?? ' Unknown'),
          name: 'NETWORK DioError');
      if (ex.response?.statusCode == 401) {
        // AuthService authController = Get.find<AuthService>();
        // DataBaseRepo db = Get.find<DataBaseRepo>();
        // db.driverBox?.clear();
        // return Get.dialog(const UnAuthenticatedDialog());
      }
      if (ex.response?.statusCode == 500) {
        return Get.defaultDialog(
            title: 'Server Error',
            content: Text(ex.response?.data.toString() ?? ''));
      }

      return Future.error(ex);
    } catch (ex) {
      developer.log(ex.toString(), name: 'NETWORK Error ');

      return Future.error(ex);
    } finally {
      _watch.stop();
    }
    return dioResponse.data;
  }

  static Future get(
      {required String url,
      bool isFullUrl = false,
      Map<String, dynamic>? queryParams,
      Map<String, String>? additionalHeaders}) async {
<<<<<<< HEAD
    String? token = "";
=======
    String? token = _appService.token;
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
    try {
      String normalizedToken = token ?? "";

      Map<String, String> authHeader = {
        'Authorization': "Bearer " + normalizedToken,
      };
<<<<<<< HEAD
=======
      if(normalizedToken ==""){
        authHeader={};
      }
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
      Map<String, String> headers = {};
      headers.addAll(additionalHeaders ?? {});
      headers.addAll(authHeader);

      var request = RequestOptions(
        method: 'get',
        baseUrl: API.baseUrl,
        validateStatus: (status) => true,
        path: url,
        queryParameters: queryParams,
        headers: headers,
      );
      dynamic response = await _performRequest(request);

      return response;
    } on FormatException {
      return Future.error(FormatException);
    } catch (e) {
      return Future.error(e);
    }
  }

  static Future post(
      {required String url,
      required dynamic body,
      isFullUrl = false,
      List<MapEntry<String, MultipartFile>>? files}) async {
<<<<<<< HEAD
    String? token = "";
=======
    String? token = _appService.token;
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
    try {
      developer.log(token ?? '', name: "token");
    } catch (e) {}
    var data = body;
    if (files != null) {
      data = FormData.fromMap(body);
      data.files.addAll(files);
    }
    try {
      String normalizedToken = token ?? "";
<<<<<<< HEAD

=======
      Map<String, String> authHeader = {
        'Authorization': "Bearer " + normalizedToken,
      };
      if(normalizedToken ==""){
        authHeader={};
      }
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
      var request = RequestOptions(
          method: 'post',
          validateStatus: (status) => true,
          baseUrl: API.baseUrl,
          path: url,
          headers: {
<<<<<<< HEAD
            'Authorization': "Bearer $normalizedToken",
            'Content-Type': "application/json",
            "Accept": "application/json",
          },
=======

            'Content-Type': "application/json",
            "Accept": "application/json",
          }..addAll(authHeader),
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
          data: data);

      var response = await _performRequest(request);
      return response;
    } on FormatException {
      return Future.error(FormatException);
    } catch (e) {
      return Future.error(e);
    }
  }
}
