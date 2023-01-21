import 'package:flutter/material.dart';
import 'package:junior_project/core/constant/color.dart';

class CreateCardTextFieldLink extends StatelessWidget {
  final String labeltext;
  final IconData icondata;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final String prefixtext;

  const CreateCardTextFieldLink({
    super.key,
    required this.labeltext,
    required this.mycontroller,
    required this.icondata,
    required this.valid,
    this.isNumber = false,
    required this.prefixtext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          labeltext,
          style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(221, 55, 55, 55)),
        ),
        const SizedBox(
          height: 5,
        ),
        // Container(
        //   height: 40,
        //   decoration: BoxDecoration(boxShadow: const [
        //     BoxShadow(
        //       offset: Offset(0, 3),
        //       color: Color.fromARGB(255, 217, 213, 213),
        //       blurRadius: 3,
        //     ),
        //     BoxShadow(
        //       offset: Offset(0, 0),
        //       color: Colors.white,
        //       blurRadius: 0,
        //     )
        //   ], borderRadius: BorderRadius.circular(12)),
        //   child:
        TextFormField(
            controller: mycontroller,
            keyboardType: isNumber ? TextInputType.phone : TextInputType.text,
            validator: valid,
            decoration: InputDecoration(
              prefixIcon: Text(prefixtext),
              prefixIconConstraints:
                  const BoxConstraints(maxWidth: 15, maxHeight: 0),
              errorStyle: const TextStyle(fontSize: 11),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              filled: true,
              fillColor: AppColor.textfieldprimary,
              suffixIcon: Icon(
                icondata,
                color: AppColor.primaryColor,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.white),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.primaryColor),
                borderRadius: BorderRadius.circular(12),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.primaryColor),
                borderRadius: BorderRadius.circular(12),
              ),
            )),
        // ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
