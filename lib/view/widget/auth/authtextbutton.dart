import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:junior_project/core/constant/color.dart';
=======
import 'package:business_card/core/constant/color.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class AuthTextButton extends StatelessWidget {
  final String textbutton;
  final String text;
  final void Function() onpressed;

  const AuthTextButton({
    super.key,
    required this.textbutton,
    required this.text,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(text),
        TextButton(
            onPressed: onpressed,
            style: const ButtonStyle(),
            child: Text(
              textbutton,
              style: TextStyle(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            )),
      ],
    );
  }
}
