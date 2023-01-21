import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/color.dart';
=======
import 'package:business_card/core/constant/color.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class ProfileAboutMeSection extends StatelessWidget {
  final String text;
  const ProfileAboutMeSection({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
<<<<<<< HEAD
            color: const Color.fromARGB(255, 239, 239, 239),
=======
            color: AppColor.textfieldprimary,
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
            borderRadius: BorderRadius.circular(15)),
        width: MediaQuery.of(context).size.width - 30,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Text(
                "About Me:",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColor.darkgrey),
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(195, 25, 24, 24)),
            ),
          ],
        ));
  }
}
