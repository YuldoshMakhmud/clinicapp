import 'package:clinicapp/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ClinicAuth extends StatefulWidget {
  const ClinicAuth({super.key});

  @override
  State<ClinicAuth> createState() => _ClinicAuthState();
}

class _ClinicAuthState extends State<ClinicAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomButtonWidget(
          text: "SMS yuborish",
          onTap: () {},
          isIcon: false,
        )
      ],
    ));
  }
}
