import 'package:flutter/material.dart';
import 'package:business_card/core/constant/color.dart';

class CreateCardTextHeader extends StatelessWidget {
  final String text;
  const CreateCardTextHeader({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
                color: AppColor.white,
                fontSize: 32,
                fontWeight: FontWeight.bold),
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          // Text(
          // bodytext,
          // style: const TextStyle(fontSize: 15, color: AppColor.primaryColor),
          // )
        ],
      ),
    );
  }
}
