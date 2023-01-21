import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/color.dart';
=======
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class ProfileDisplayName extends StatelessWidget {
  final String displayname;

  const ProfileDisplayName({super.key, required this.displayname});

  @override
  Widget build(BuildContext context) {
    return Text(
      displayname,
<<<<<<< HEAD
      style: TextStyle(
          color: AppColor.darkgrey, fontSize: 26, fontWeight: FontWeight.w600),
=======
      style: const TextStyle(
          color: Colors.black87, fontSize: 26, fontWeight: FontWeight.w600),
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
    );
  }
}
