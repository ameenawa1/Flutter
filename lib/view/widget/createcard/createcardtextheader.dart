import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/color.dart';
=======
import 'package:business_card/core/constant/color.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class CreateCardTextHeader extends StatelessWidget {
  final String text;
  const CreateCardTextHeader({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColor.white,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
=======
      decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
                color: AppColor.white,
                fontSize: 32,
                fontWeight: FontWeight.bold),
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          // Text(
          // bodytext,
          // style: const TextStyle(fontSize: 15, color: AppColor.primaryColor),
          // )
        ],
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
      ),
    );
  }
}
