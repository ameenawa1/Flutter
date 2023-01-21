import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:junior_project/data/datasource/static/static.dart';
=======
import 'package:business_card/data/datasource/static/static.dart';
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(welcome.image!))),
    );
  }
}
