import 'package:flutter/material.dart';
import 'package:pointing_system/constant/constant.dart';

class MyText extends StatelessWidget {
  const MyText({super.key, required this.text, this.type});
  final String text;
  final String? type;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: type != null ? header : description,
    );
  }
}
