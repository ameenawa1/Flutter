import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/color.dart';
=======
import 'package:business_card/core/constant/color.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class ProfileNormalIconButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icon;
  final double iconsize;
  const ProfileNormalIconButton(
      {super.key, this.onPressed, required this.icon, required this.iconsize});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      iconSize: iconsize,
      color: AppColor.primaryColor,
    );
  }
}
