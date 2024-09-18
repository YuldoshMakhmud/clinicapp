import 'package:clinicapp/presentation/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormFeildWidget extends StatelessWidget {
  const CustomTextFormFeildWidget(
      {super.key,
      required this.topText,
      required this.hintText,
      required this.controller,
      this.keyboardType = TextInputType.text});

  final String topText;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              topText,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          TextFormField(
            keyboardType: keyboardType,
            controller: controller,
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle:
                    TextStyle(color: ColorConst.textColor.withOpacity(0.6)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorConst.primaryColor)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: ColorConst.secondaryColor))),
          )
        ],
      ),
    );
  }
}
