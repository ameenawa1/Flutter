// ignore_for_file: prefer_const_constructors
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:junior_project/core/services/services.dart';
import 'package:junior_project/routes.dart';
// import 'package:junior_project/view/screen/createcard.dart';
// import 'package:junior_project/view/screen/onboarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Digital Buisness Card",
      // routes: routes,
      // home: CreateCard(),
      getPages: routes,
    );
  }
}
