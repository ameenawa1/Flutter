import 'package:flutter/material.dart';

class ViewCardButton extends StatelessWidget {
  final String text;
  final Color textcolor;
  final Color buttoncolor;

  final void Function()? onPressed;
  const ViewCardButton(
      {super.key,
      required this.text,
      this.onPressed,
      required this.textcolor,
      required this.buttoncolor});

  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
      margin: const EdgeInsets.only(top: 5, bottom: 10),
=======
      margin: const EdgeInsets.only(top: 20, bottom: 10),
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
      child: MaterialButton(
        height: 55,
        minWidth: double.infinity,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: buttoncolor),
            borderRadius: BorderRadius.circular(15)),
        color: buttoncolor,
        disabledColor: buttoncolor,
        child: Text(
          text,
          style: TextStyle(
              color: textcolor, fontWeight: FontWeight.w600, fontSize: 20),
        ),
      ),
    );
  }
}
