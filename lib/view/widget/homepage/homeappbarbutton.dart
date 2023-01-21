import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/color.dart';
=======
import 'package:business_card/core/constant/color.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class HomeAppBarButton extends StatelessWidget {
  final void Function() onPressed;
  final IconData iconData;
  final Color iconcolor;
  final double iconsize;
  final bool? active;

  const HomeAppBarButton(
      {super.key,
      required this.onPressed,
      required this.iconData,
      required this.iconcolor,
      this.active,
      required this.iconsize});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Icon(
        iconData,
        size: iconsize,
        color: active == true ? AppColor.primaryColor : iconcolor,
      ),
    );
  }
}
