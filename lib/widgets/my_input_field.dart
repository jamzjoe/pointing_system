import 'package:flutter/material.dart';

import 'my_text.dart';

class MyInputField extends StatelessWidget {
  const MyInputField({
    super.key,
    this.label,
    this.controller,
  });
  final String? label;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration:
          InputDecoration(label: label == null ? null : MyText(text: label!)),
    );
  }
}
