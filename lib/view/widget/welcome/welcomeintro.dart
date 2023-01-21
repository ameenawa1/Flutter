import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/color.dart';
import 'package:junior_project/data/datasource/static/static.dart';
=======
import 'package:business_card/core/constant/color.dart';
import 'package:business_card/data/datasource/static/static.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class WelcomeIntro extends StatelessWidget {
  const WelcomeIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          welcome.title!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: AppColor.primaryColor,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          welcome.body!,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey[700], fontSize: 18),
        ),
      ],
    );
  }
}
