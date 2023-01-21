import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final ImageProvider<Object> profileimage;

  const ProfileImage({super.key, required this.profileimage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: CircleAvatar(
        backgroundImage: profileimage,
<<<<<<< HEAD
        radius: 100,
=======
        radius: 90,
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
      ),
    );
  }
}
