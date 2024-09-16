import 'package:clinicapp/presentation/widgets/custom_button.dart';
import 'package:clinicapp/presentation/widgets/custom_text_form_feild_widget.dart';
import 'package:flutter/material.dart';

class ClinicAuth extends StatefulWidget {
  const ClinicAuth({super.key});

  @override
  State<ClinicAuth> createState() => _ClinicAuthState();
}

class _ClinicAuthState extends State<ClinicAuth> {
  TextEditingController phoneNumberContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomTextFormFeildWidget(
          topText: "Phone NUmber :",
          hintText: "Phone Number",
          controller: phoneNumberContoller,
          keyboardType: TextInputType.phone,
        ),
        CustomButtonWidget(
          text: "SMS yuborish",
          onTap: () {},
          isIcon: false,
        )
      ],
    ));
  }
}
