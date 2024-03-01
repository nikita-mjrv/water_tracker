import 'package:flutter/material.dart';

class WaterInputField extends StatelessWidget {
  final TextEditingController controller;

  WaterInputField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: 'ml',
        ),
      ),
    );
  }
}
