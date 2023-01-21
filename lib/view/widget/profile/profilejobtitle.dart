import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/color.dart';
=======
import 'package:business_card/core/constant/color.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class ProfileJobTitle extends StatelessWidget {
  final String text;
  const ProfileJobTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.grey),
    );
  }
}
