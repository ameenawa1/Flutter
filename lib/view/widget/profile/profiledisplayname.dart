import 'package:flutter/material.dart';
import 'package:junior_project/core/constant/color.dart';

class ProfileDisplayName extends StatelessWidget {
  final String displayname;

  const ProfileDisplayName({super.key, required this.displayname});

  @override
  Widget build(BuildContext context) {
    return Text(
      displayname,
      style: TextStyle(
          color: AppColor.darkgrey, fontSize: 26, fontWeight: FontWeight.w600),
    );
  }
}
