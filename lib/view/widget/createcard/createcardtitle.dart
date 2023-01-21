import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/color.dart';
=======
import 'package:business_card/core/constant/color.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class CreateCardTitle extends StatelessWidget {
  final String text;
  const CreateCardTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
      margin: const EdgeInsets.only(bottom: 40, top: 15),
=======
      margin: const EdgeInsets.only(bottom: 40),
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
      alignment: Alignment.bottomLeft,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColor.primaryColor,
        ),
      ),
    );
  }
}
