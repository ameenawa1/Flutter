import 'package:flutter/material.dart';
import 'package:junior_project/data/datasource/static/static.dart';

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
