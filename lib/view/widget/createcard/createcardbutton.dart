import 'package:flutter/material.dart';

class CreateCardButton extends StatelessWidget {
  final String text;
  final Color textcolor;
  final Color buttoncolor;

  final void Function()? onPressed;
  const CreateCardButton(
      {super.key,
      required this.text,
      this.onPressed,
      required this.textcolor,
      required this.buttoncolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 10),
      child: MaterialButton(
        height: 52,
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
