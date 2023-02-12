import 'package:flutter/material.dart';
import 'package:pointing_system/widgets/my_text.dart';

class UnknownPage extends StatelessWidget {
  final String? errorMessage;
  const UnknownPage({super.key, this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyText(text: errorMessage!),
      ),
    );
  }
}
