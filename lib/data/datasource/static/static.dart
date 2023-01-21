// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/imageasset.dart';
import 'package:junior_project/data/model/onboardingmodel.dart';
import 'package:junior_project/data/model/templatemodel.dart';
import 'package:junior_project/data/model/testingdatamodel.dart';
import 'package:junior_project/data/model/welcomemodel.dart';
=======
import 'package:business_card/core/constant/imageasset.dart';
import 'package:business_card/data/model/onboardingmodel.dart';
import 'package:business_card/data/model/templatemodel.dart';
import 'package:business_card/data/model/testingdatamodel.dart';
import 'package:business_card/data/model/welcomemodel.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "Create Your Card",
      body: "Create your own buisness card easly, by adding your information",
      image: AppImageAsset.onBooardingImageOne),
  OnBoardingModel(
      title: "Share Your Card",
      body:
          "Share your own Buisness card, using email, mobile wallet and QR code",
      image: AppImageAsset.onBooardingImageTwo),
  OnBoardingModel(
      title: "NFC Services",
      body: "Scan or drop, share your card or add one to your list using NFC",
      image: AppImageAsset.onBooardingImageThree),
  OnBoardingModel(
      title: "Contact List",
      body:
          "Manage your contact by adding/removing cards from your contact list.",
      image: AppImageAsset.onBooardingImageFour)
];

WelcomeModel welcome = WelcomeModel(
    title: "Welcome",
    body: "Digital business card, the best way to introduce yourself, Join us!",
    image: AppImageAsset.welcome);

List<TemplateModel> templatelist = [
  TemplateModel(image: AppImageAsset.template0),
<<<<<<< HEAD
  TemplateModel(image: AppImageAsset.template1),
  TemplateModel(image: AppImageAsset.template2),
  TemplateModel(image: AppImageAsset.template3),
=======
  TemplateModel(image: AppImageAsset.template0),
  TemplateModel(image: AppImageAsset.template0),
  TemplateModel(image: AppImageAsset.template0),
  TemplateModel(image: AppImageAsset.template0)
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
];

List<TestingDataModel> testingdatalist = [
  TestingDataModel(
<<<<<<< HEAD
    templatenumber: 0,
=======
    templatenumber: 1,
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
    userid: 2,
    displayname: "MohammadYazbeck",
    jobtitle: "Software eng.",
    about: "born in 27/8/1999, works for khara company",
    email: "mohamyazbec@gmail.com",
    address: "Damascus,Syria",
    phonenumber1: "09323232323",
    phonenumber2: "0231231232",
    link1: "facebook.com",
    link2: "facegsddsad.com",
    link3: "dasdasdasdas.com",
    link4: "Asdasdasd.com",
    profileimage: const AssetImage(AppImageAsset.profileimage),
  ),
  TestingDataModel(
<<<<<<< HEAD
    templatenumber: 1,
    userid: 1,
    displayname: "Samer Hadad",
=======
    templatenumber: 2,
    userid: 1,
    displayname: "Samer",
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
    jobtitle: "Software eng.",
    about: "born in 27/8/1999, works for khara company",
    email: "mohamyazbec@gmail.com",
    address: "Damascus,Syria",
    phonenumber1: "09323232323",
    phonenumber2: "0231231232",
    link1: "facebook.com",
    link2: "facegsddsad.com",
    link3: "dasdasdasdas.com",
    link4: "Asdasdasd.com",
    profileimage: const AssetImage(AppImageAsset.profileimage),
  ),
  TestingDataModel(
<<<<<<< HEAD
    templatenumber: 2,
    userid: 3,
    displayname: "Liza Robretson",
    jobtitle: "Software eng.",
    about: "born in 27/8/1999, works for khara company",
    email: "waleed@gmail.com",
    address: "Damascus,Syria",
    phonenumber1: "09323232323",
    phonenumber2: "0231231232",
    link1: "facebook.com",
    link2: "facegsddsad.com",
    link3: "dasdasdasdas.com",
    link4: "Asdasdasd.com",
    profileimage: const AssetImage(AppImageAsset.profileimage),
  ),
  TestingDataModel(
    templatenumber: 3,
    userid: 3,
    displayname: "Steve Mackway",
    jobtitle: "Software eng.",
    about: "born in 27/8/1999, works for khara company",
    email: "waleed@gmail.com",
    address: "Damascus,Syria",
    phonenumber1: "09323232323",
    phonenumber2: "0231231232",
    link1: "facebook.com",
    link2: "facegsddsad.com",
    link3: "dasdasdasdas.com",
    link4: "Asdasdasd.com",
    profileimage: const AssetImage(AppImageAsset.profileimage),
  ),
  TestingDataModel(
    templatenumber: 3,
    userid: 3,
    displayname: "Aya Muhsen",
    jobtitle: "Software eng.",
    about: "born in 27/8/1999, works for khara company",
    email: "waleed@gmail.com",
    address: "Damascus,Syria",
    phonenumber1: "09323232323",
    phonenumber2: "0231231232",
    link1: "facebook.com",
    link2: "facegsddsad.com",
    link3: "dasdasdasdas.com",
    link4: "Asdasdasd.com",
    profileimage: const AssetImage(AppImageAsset.profileimage),
  ),
  TestingDataModel(
    templatenumber: 3,
    userid: 3,
    displayname: "Adam Kareem",
    jobtitle: "Software eng.",
    about: "born in 27/8/1999, works for khara company",
    email: "waleed@gmail.com",
    address: "Damascus,Syria",
    phonenumber1: "09323232323",
    phonenumber2: "0231231232",
    link1: "facebook.com",
    link2: "facegsddsad.com",
    link3: "dasdasdasdas.com",
    link4: "Asdasdasd.com",
    profileimage: const AssetImage(AppImageAsset.profileimage),
  ),
  TestingDataModel(
    templatenumber: 3,
    userid: 3,
    displayname: "Mohammad hassan",
    jobtitle: "Software eng.",
    about: "born in 27/8/1999, works for khara company",
    email: "waleed@gmail.com",
    address: "Damascus,Syria",
    phonenumber1: "09323232323",
    phonenumber2: "0231231232",
    link1: "facebook.com",
    link2: "facegsddsad.com",
    link3: "dasdasdasdas.com",
    link4: "Asdasdasd.com",
    profileimage: const AssetImage(AppImageAsset.profileimage),
  ),
  TestingDataModel(
    templatenumber: 3,
    userid: 3,
    displayname: "Mohammad hassan",
    jobtitle: "Software eng.",
    about: "born in 27/8/1999, works for khara company",
    email: "waleed@gmail.com",
    address: "Damascus,Syria",
    phonenumber1: "09323232323",
    phonenumber2: "0231231232",
    link1: "facebook.com",
    link2: "facegsddsad.com",
    link3: "dasdasdasdas.com",
    link4: "Asdasdasd.com",
    profileimage: const AssetImage(AppImageAsset.profileimage),
  ),
  TestingDataModel(
    templatenumber: 3,
    userid: 3,
    displayname: "Mohammad hassan",
    jobtitle: "Software eng.",
    about: "born in 27/8/1999, works for khara company",
    email: "waleed@gmail.com",
    address: "Damascus,Syria",
    phonenumber1: "09323232323",
    phonenumber2: "0231231232",
    link1: "facebook.com",
    link2: "facegsddsad.com",
    link3: "dasdasdasdas.com",
    link4: "Asdasdasd.com",
    profileimage: const AssetImage(AppImageAsset.profileimage),
  ),
  TestingDataModel(
    templatenumber: 3,
    userid: 3,
    displayname: "Mohammad hassan",
    jobtitle: "Software eng.",
    about: "born in 27/8/1999, works for khara company",
    email: "waleed@gmail.com",
    address: "Damascus,Syria",
    phonenumber1: "09323232323",
    phonenumber2: "0231231232",
    link1: "facebook.com",
    link2: "facegsddsad.com",
    link3: "dasdasdasdas.com",
    link4: "Asdasdasd.com",
    profileimage: const AssetImage(AppImageAsset.profileimage),
  ),
  TestingDataModel(
    templatenumber: 3,
    userid: 3,
    displayname: "Mohammad hassan",
    jobtitle: "Software eng.",
    about: "born in 27/8/1999, works for khara company",
    email: "waleed@gmail.com",
    address: "Damascus,Syria",
    phonenumber1: "09323232323",
    phonenumber2: "0231231232",
    link1: "facebook.com",
    link2: "facegsddsad.com",
    link3: "dasdasdasdas.com",
    link4: "Asdasdasd.com",
    profileimage: const AssetImage(AppImageAsset.profileimage),
  ),
  TestingDataModel(
    templatenumber: 3,
    userid: 3,
    displayname: "Mohammad hassan",
=======
    templatenumber: 3,
    userid: 3,
    displayname: "waleed",
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
    jobtitle: "Software eng.",
    about: "born in 27/8/1999, works for khara company",
    email: "waleed@gmail.com",
    address: "Damascus,Syria",
    phonenumber1: "09323232323",
    phonenumber2: "0231231232",
    link1: "facebook.com",
    link2: "facegsddsad.com",
    link3: "dasdasdasdas.com",
    link4: "Asdasdasd.com",
    profileimage: const AssetImage(AppImageAsset.profileimage),
  ),
];
