import 'package:flutter/material.dart';

class TxtField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  const TxtField({super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 13.0
      ),
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2.0
          )
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 0.5
          )
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2.0
          )
        ),
        hintText: label,
        hintStyle: TextStyle(
          color: Theme.of(context).primaryColor
        )
      ),
    );
  }
}