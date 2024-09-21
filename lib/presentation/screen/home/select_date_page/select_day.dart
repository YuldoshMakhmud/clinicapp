import 'package:clinicapp/presentation/core/constants/colors.dart';
import 'package:flutter/material.dart';

class SelectDay extends StatelessWidget {
  const SelectDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Select Data Page',
            style: TextStyle(
              fontSize: 30,
              color: ColorConst.textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
